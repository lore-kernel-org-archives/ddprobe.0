Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77B723222
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 21:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645995684;
	h=To:Subject:From:Message-Id:Date;
	bh=8VCOs1LZwweB1fbuGSHGWVQ/t3E3k2fLFfaVGAMKugQ=;
	b=kWtwlGhLM7bIPuwgyqn+hMdwwg+f4gOD/pkezktaRl07SpiuXoDwNyCRLd6rkRTo
	UluJQ/e+6/CaHWykReHdcJAUrPdjrFg6CPbFbxYXt+pjHDZbJ8aMsS3Lvb4EG67Uam1
	0xRSZkeUDaTxnzB1k8M5++au+Xhk0ZhBOFkMdTv8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645995684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8VCOs1LZwweB1fbuGSHGWVQ/t3E3k2fLFfaVGAMKugQ=;
	b=Wkxu2ujlVzgKz6dGw0z47vh4FE/u52dBwPWzw1/kQlYeBPpum4QrIqfKuVyajLeu
	kSDKrItlJVPxKeCps7nb1vjfs6SgD9UUXykqRqwRBmTFNfiEVM1y881AviB/ZLm+F+p
	arQ45e1iuZ9TW4ZI/pv17u1lhc47Dr7+DKoutip4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3cfcf39b-b2812edb-321e-4e03-869d-260eea0ca6e3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 69c002ac11bcb21bfbda65e15110b1fbb3aaadec9c7b080e41892e7d84f856a6
Date: Sun, 27 Feb 2022 21:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645995684
