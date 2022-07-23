Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BA3D7E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 18:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658600812;
	h=To:Subject:From:Message-Id:Date;
	bh=oMpzNl2In/6dR/ZOuqPgCHIfvnv+DVVVrPD0RW3dXDU=;
	b=lVOVwIozw988n231c0Iq6ILMLT6hNootWok07LrPLUxuJvh+2K4YOEzL8Sspi0uS
	UOgB/enFwxQac1iK5wQX/FbKwNmyt+SqWUCRGJcsAObRazoqSm255o1WxBPhSXg/vvK
	Ri7r0025qW2KZf/teKXnkleXU7NYbzDSKY1GsTsc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658600812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oMpzNl2In/6dR/ZOuqPgCHIfvnv+DVVVrPD0RW3dXDU=;
	b=G5D40JgImto06zCFi3QCLL1dEbo+SOgS4CasXzrNTmDA4qo9i9imNHUtBI5lyohO
	5K+mjJYCd+nYtsUN8xdKLLhprb5xBDTkONPZ909AwzgZ1Q4h5aVKnaMaBhzlu33BJmh
	aClirbBNGodEktLp1qHFCEsODwsFcE7yPJe3psx4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822c4feef9-14390d0b-b830-4d86-932d-a44b6eb6167a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 283c29f0f56f9456ca033adfba06b138a15a7ce312c7ca6c30a54e3e3a573795
Date: Sat, 23 Jul 2022 18:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658600812
