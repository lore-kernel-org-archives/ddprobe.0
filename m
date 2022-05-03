Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5732817D2
	for <ddprobe@lists.linux.dev>; Tue,  3 May 2022 05:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651556398;
	h=To:Subject:From:Message-Id:Date;
	bh=Q9mM2pL0HZTTjgkAXvu+6F7OAF8K8bepWkNRGCdgp28=;
	b=CtXRdy+1Ry1i+8q1ssA36KvcNvRurrwPDgwEZJmj5/fofKCqFbNXDBVzzeDvsYZy
	PpJvDlqdAHNaCi0mzJcWFzWbkV4spXZxHv4rjvIehrsWFkFU4NLrtC6o9Z8tvH2EA4C
	j4kE6xTugDqQxsMHT8umhxzANHQ9LkfimRm/Uhbs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651556398;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Q9mM2pL0HZTTjgkAXvu+6F7OAF8K8bepWkNRGCdgp28=;
	b=CIRDbfjCAUQt/iz5rLnptSziAdr+0lgWclM9lGWDb60p0MjXzVHqswxGpFrNY7PB
	aAAmhoaW87iQoAoBd+8heZKPKDnY5fCah4E9xZ1ckSY5hhID3D0XxJK55QYsJY88nbl
	MKAthVdcl5S3viNgwYluRmHlyJLx6WyaJBOs3GtA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180886eb4b7-6416f691-cd15-4c91-b6b8-d669355f6697-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 43029c12b81de92aaead6b8ed1fa3ee3e3db14abcad8eb44288a658b7bf3c482
Date: Tue, 3 May 2022 05:39:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.03-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651556398
