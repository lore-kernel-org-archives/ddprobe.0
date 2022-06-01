Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A0672592
	for <ddprobe@lists.linux.dev>; Wed,  1 Jun 2022 20:45:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654116299;
	h=To:Subject:From:Message-Id:Date;
	bh=8YzZPUcpfQX1CEd4oP91KHk3RvmizjL3dBafyVAwXNk=;
	b=gpKEuHycsX24lrPc1INTyHTm6OfEaJClpw/DyKhKjImc2C2VQuZPevNjgpTsg6VD
	ya4pmQndwKB769D9jgH4BPNKnnQkDatza6TCNoMi5RafYuqAzf4ibFjK7DATGu7eKs7
	cG99SoMEoGHZkTlHXMugR5RROIaslrrQERZTDYZQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654116299;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8YzZPUcpfQX1CEd4oP91KHk3RvmizjL3dBafyVAwXNk=;
	b=HDs0vgH/BysdA3Dcy+TtkPDwUdd05TuhlOULOUdT+CRTfJQkv60QWZRHA1lywEqx
	i7KaScI8+t3jPTYV4tGnKGMyEoASOaYa4PF+l1lkIvzHLT70kxbI3medsAzs0gkgxUf
	kUFXZvMx/6MEKhnPw5FOnZYW7qhi2hA2DymRFR1I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812103b269-855c1435-a8de-4bce-97e6-20cdd611823d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5846a6443c75f09fdd82be1a25bec4d4e020d2f46d56238afe21f6e57557164f
Date: Wed, 1 Jun 2022 20:44:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.01-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654116299
