Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 409DA7E
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 11:06:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656932812;
	h=To:Subject:From:Message-Id:Date;
	bh=NmIv6gm4tAz8nm+RsxSoaX+9EaEAF29wWFQlAGWQGMw=;
	b=gSghwu6M2Fpeij1GUI2vzgefDRmrbvXjKL+kbfgXxZoGeDrxuuBjj2fnqKfpcZoz
	kS7gbB//G1KhOddpjdXz2U6woNeDm/o6Ti2b/nq+ydNXTNYN4i24GNvHDyPHWDTuIqW
	Cc8ax4MRGEaBi5PPUna+9zOEgAmKqHlo2tWrBZi4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656932812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NmIv6gm4tAz8nm+RsxSoaX+9EaEAF29wWFQlAGWQGMw=;
	b=YoDzBVeCetFtSmLSVu6zSSUm30GKVNE0RrAExZcXwnteAmatyFrE4YOa8iyP/amr
	WXUm2+OMT9/ZOGb9lizuM0Yl3mfp+qA5y5tTokjajrrZxct5p0AuT14rC/HOG9SWl1m
	2PQNmye/UInPtdm85ci1zeOVdfEIKIr39kFPGMRc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c8e44617-03b5f0d8-8cf7-435c-b55d-7d818c58c791-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d304901bf7df6a2ed7eec2c47f90437e06b0552fef92cedf1e60c324e252206c
Date: Mon, 4 Jul 2022 11:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656932812
