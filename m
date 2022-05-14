Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A27236A
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 23:43:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652571779;
	h=To:Subject:From:Message-Id:Date;
	bh=/5dxsITEirDrDkWOev3tVbNJkbW/NGYf4L0Vey5x3Ig=;
	b=YvSOFzHKSM4zhYehQsv63If+isanSyThWPs3/8oZ8O/NdoXHY2jow5iF3JqtxFlZ
	eqrTHd1LZ+AShXHAqDMxqDyrp8+tb9obltZnoEKYtg7kk6JYS4jeg09nMf686k2PFOr
	eH5fFqCq+KnVc1pcKUcs2LkC1vV2tZHMhzAwFXAw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652571779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/5dxsITEirDrDkWOev3tVbNJkbW/NGYf4L0Vey5x3Ig=;
	b=Cm04lne6LSodOcLCEU1CwKXlU9Fi59IHjtro6UuE/cNjmm2mSVRbEbNxGhn46ZkS
	XE0sUb/iJsh4rN3Ay7VzYuOfGJL775ULaBEeok3fKq+vQxsetoyrFvbtLv+uxKlyASZ
	+MNkJCtijZSOIC37RT9DCTSC0Qa37ODDFKwLQoRc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c4f4310b-7de04a16-ce76-42c3-9dcc-7bb2cf6286c1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 860717be917998f155097bfa560c375d9bb8b659f3200da2d3f1c62367f3e2ab
Date: Sat, 14 May 2022 23:42:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652571779
