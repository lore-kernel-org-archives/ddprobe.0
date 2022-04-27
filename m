Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D0307E
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 04:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651032718;
	h=To:Subject:From:Message-Id:Date;
	bh=NI/VcuEu7ekWUPUVd2iMIyyF+ayneicKSxcbjK625pU=;
	b=g9j2gpsitKX4GiXYI5uijfCnTsu9YmbwsDlJbrJvU4ULyWcrvCBQpYxoYGAtN+kN
	CkgIz516U/nen8FvJem6D1jvJiKxulhEwQYqjU9cYUcdyGWfhKOwFkqvAqn5PlY/f+6
	9v4F7OH6NzdkMgcSixGlQy0J1wOmFWNKmc8oXJCA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651032718;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NI/VcuEu7ekWUPUVd2iMIyyF+ayneicKSxcbjK625pU=;
	b=dHAXw2a4mos5pMhZRkc2QDMx2YhzyKalG6QEK5tgl9bcudydSpZb+2AXhlFeca5R
	3/H6uwjPzPJ2CUhEKuLUdcqpEcI3JCT9gsD4hGOn9VnHsuD3FAyM6RCiAIC06xQwjTL
	JJsGCPb/coJO9bh91UThKQ2jiN2gNT5Dc2v6lXKY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806937fbc8-33bb9510-6c06-4e7b-9248-6de66a3339b4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 60852cd0b2630b32b926f671cae74af540572e2f1faca64272c5004203ce6cbc
Date: Wed, 27 Apr 2022 04:11:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651032718
