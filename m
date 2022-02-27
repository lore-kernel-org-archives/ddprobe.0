Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A63817B
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 23:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646005585;
	h=To:Subject:From:Message-Id:Date;
	bh=7yDPlVFlH5E0UHlSt27a5dtk26H3uc8/bKMwMWa3wkM=;
	b=Zm/Eyu33CQqv7Dd48vRGVzkRcTTo5T5fI3uWQrvqLKLK2nndjZ6zVkGolNBbjawT
	4RM4Mu7Kc3nDeIAyyhxHfR+9Fc86K+DnX6/dtrER0F83wv25erORcxUaCCMY2FUt3Sq
	eQtvCse9PIKtUO8ZsCJppx3N/sld8PYbSDV0wqOQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646005585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7yDPlVFlH5E0UHlSt27a5dtk26H3uc8/bKMwMWa3wkM=;
	b=SiMurY9GX6RrdANty5JcymSb6VgPk1T5AMo2nsaQ6mHPrmsU1tvpv0acsTN0uB3q
	uwd1dx9b8aib8JGJuFDEPE8UwRb/vtjlRyDy3faki0E+JjDdTOZs+ZTLR05x6Dw+cIq
	ViRkvSijGnHoqgdglArojqi0tsbGJJdPsgV7DaBY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3d940388-16c2e8f0-e21a-41ed-8a0e-96943845a60f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 80f8d6b67cab0d14a5af26d36b34da348d6506b896363d5716b40cc021bca0e5
Date: Sun, 27 Feb 2022 23:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646005584
