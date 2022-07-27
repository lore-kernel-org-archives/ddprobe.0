Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 880007FF
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 04:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658896252;
	h=To:Subject:From:Message-Id:Date;
	bh=iJVPsEVfUzhWas99Zid/nBZ251orDESxUlPrh6mORhQ=;
	b=bqajQZHpVZ83xKl8+dovk1l4Y6KeJfjcSykmJ3ItxbxDe8HNxQ/BJVXHBrRi3+Nk
	JWIu+57B6ARtabosHraN+IItYza2D1mhTsfsM2VLbXx5CHZRIKPApKgGX4Vezq7vChU
	k7yU+g2TTUMKwydDy0Mnh7Iy+F7VfFm3PBSitO4k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658896252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iJVPsEVfUzhWas99Zid/nBZ251orDESxUlPrh6mORhQ=;
	b=Z2uDsuBKhN66U8rt38dcI6+0C2/UdvY3AHxthsRq+Yoss/UVnqb0fOm6w6Uk+rUl
	I7LNCF4NMR4ZxwSmGO1eg2rJQBIf1riO2lTCzAj2/fAuXX99ZB3ZIHoLtt4LRshEPqi
	ECp5Y9K3qdNXVNDCXZ0nimtHJpSfxegaC3P7MYfY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823debfe9d-dda381f2-6fa5-4cbb-b725-5600f50ef458-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dd5934328726461bfda4776b2196300cd08660e4c7d9453bd44fb59f6deb0299
Date: Wed, 27 Jul 2022 04:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658896252
