Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90CA92F2F
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 01:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645926984;
	h=To:Subject:From:Message-Id:Date;
	bh=5Hbce0m5mvjuffMxE5SMme+IMx1rG4y0JoNkFK/PYKQ=;
	b=CfvHnTh16Cno12sJ8JygawyYgbo1ZuzQtRmdtvQIcOl19lB7lzRNgt90JD3fFO6q
	unADbo9pdapz+hNuVNS9Oe2D8wuxKx5CqQP0XhJ+PAiTf7NRLD2izFGeVPO3gCtTnqi
	5gzwmiiWYK7YlrtTD7bLoOPJmJJIbFqRr8V741kA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645926984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5Hbce0m5mvjuffMxE5SMme+IMx1rG4y0JoNkFK/PYKQ=;
	b=aJMWvPgj0aI403gc8sBmRYy6xtR9aKp4M+OSDMTDQCPVT5X5LbdFUWiOAwLWejd+
	TaOiEEtU//9OOe3yV3W5USgzvnavPkBrY9UfzJ/AsBwlUgbDccEpxutFPgig5V7fhiX
	LY3Ye406cxdC/hg8WpYpACy2h3R1ilg4cR+aHHzw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f38e4ac37-c5ad1b24-47c9-427f-8c3e-a0fe184d0bef-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ea4abea3eddad3a91fa7a8f32528348b1e17d9218f0aca127e26723390b82d07
Date: Sun, 27 Feb 2022 01:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645926984
