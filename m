Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74B976AC0
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 23:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657756012;
	h=To:Subject:From:Message-Id:Date;
	bh=BEiPvlan1rnfuBY3uH/Ep4cOPZU2IfGy1kGx8SAnevg=;
	b=G1SxhojOcdKUzHGrkvyZ5+nyJTY84L03FVgC7d2xhzfneafMAObkNt4XC8agHdXr
	e8R5VPGCM0bv1mWrhQW67Ki8fuNy0xkXSq7+yG+RaVzmYCeE27CEwtMqFXC+L0FcQeo
	YWasd9RA+p4zyR1V64fX606ZVqHuXsmY9qLF0w3s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657756012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BEiPvlan1rnfuBY3uH/Ep4cOPZU2IfGy1kGx8SAnevg=;
	b=au/6PHbHH4/cds39UqZQTVmKby0d69poB0MgZXSgPWGnzvFV6B1EmZR8U3rlEV7T
	iAYdEjiUK4pbcPeUgrA5qe4mtOEZMtR9TN2Go16B3WcgpR9SYPy4PFpPsvWpV3+bhuE
	+Vjv/+eHUjLHCPmE3qe69jHoIQi7/ux9/gJlw41E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f9f54efb-d75239f4-18b7-4a0a-ae07-fb62b958ee6c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 83e027881a697b6a3776919a10facd52939b47074bbe2e6522cb9858b9c11071
Date: Wed, 13 Jul 2022 23:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657756012
