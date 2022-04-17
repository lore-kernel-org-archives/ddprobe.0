Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D7CB2F4B
	for <ddprobe@lists.linux.dev>; Sun, 17 Apr 2022 22:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650232918;
	h=To:Subject:From:Message-Id:Date;
	bh=CusxHxWTJiLyvDc7NvumxKDOp6hg/dCks3QzRbn1rCk=;
	b=exWuOSVHCq6HYxcOcorFSKrQQ0616kWt7Xpw0CjOTiNiV3D88S+wGexG0DNPyPme
	Lq90SLDwHREyixzUCBpU3X6s0Lj7jrFlRFlOxGGhmW5TK8poz05aS7mppcQsH+zVkUO
	goM7GoyV6kAP7T27tkHgjB1HTFNJbatPnzrK+P9c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650232918;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CusxHxWTJiLyvDc7NvumxKDOp6hg/dCks3QzRbn1rCk=;
	b=GXfx3YU5H7/TL+BI+q6DmciVUZpaMv4LPWioe2U53lGgoSgn7bhs5xRHCyhmL7Kq
	FMDmNNM2/Fw0L7Vqnv5Gf+G/fmfaHWKVMUiQ3kPIk2MEUMcQbeQCKVoGXdVnvYAfWuy
	vSib6DrZCFU+4kFD8MyOuhySd1dcAuvQTdipbhU0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180398c00f2-ad0c7808-27e0-4c5a-9f7d-8b134b7a2fd8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: adb7ff04e40e69a3d58db12a83b4454bec48bc1bbe349a2d68a05f556a590325
Date: Sun, 17 Apr 2022 22:01:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.17-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650232918
