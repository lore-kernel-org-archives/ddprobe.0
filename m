Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4536215A7
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 12:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660048252;
	h=To:Subject:From:Message-Id:Date;
	bh=NWqryrpEIka63oDlg97x1frAeUYSN3TrrxiYa87YjH4=;
	b=jZSRHNKbg+8tRjBQ2wR5GAcDNdiszUjUnkUPa3lZgJIWNUX6+IhMIDNHREfeGd4A
	OHnDrkT4HjZvIZIP5FiTWo4ujyNTuGOzQSXSLlMVUmc5E6sRNXUJ1sf863BTb4MMnNY
	l6XEjpreT1VqBGxLVvOsPp0pcTbAvQvpJgZzPvpc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660048252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NWqryrpEIka63oDlg97x1frAeUYSN3TrrxiYa87YjH4=;
	b=ibR8sUTfDybJfcBHhW5Tng9tkFDAK9H+hrzDoLw92DdEuqQDFPRSHikYIA/pWNe2
	1IIawpX7zrp/y2VAKG3m0+0daJ/4kTySshFrfKvuHFCAVTn/K6DBI4Z1pJIdupylxmX
	OjNtdHy6dirk458YTtHBYBaADWPNUrHvsvLHsBGA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018282961e7b-c5942bf8-1b10-4c9b-adb6-34748b271054-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c8ceb12f81d6ff40b7120326fece65d094d0602eb9139c4c010152065469612c
Date: Tue, 9 Aug 2022 12:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660048252
