Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5229367
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 03:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658719012;
	h=To:Subject:From:Message-Id:Date;
	bh=aceSjuYAwXfbeUGNoiGOVLHKotKe5viDm9GU5kqg/+s=;
	b=VXtebAcLw9zO3hD2drP0M/4DNbTYaOM5nKVD3R6mE6MXiVX4J4N52MIy735HdZdW
	nbRDcwk30OIKnPv8q95mAClBVeg2aTLw8w8NkoazL65XWMu1i7TrDsrhRHGADQJYDZ2
	AaE4k0+64hiemey4Thil2pDPSH5/GSxfeiMZo6VY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658719012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aceSjuYAwXfbeUGNoiGOVLHKotKe5viDm9GU5kqg/+s=;
	b=XZaH5Te1vWqUNXzYtIBA342hP1PMpYrCy9QJXoVYUnnOQJrYquvCUqVkSJKH7rW3
	/UiTX6xnVtPqVIKKHf71RgTiO+Jfd7tLJkCdi+kWDj0l0yo5p/bU0shVLANptuKA4Fj
	lSAEJ6KsbzNB4aP2qe0IsZ3y0IRK0eilgH0gwMS0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182335b85bb-dc40a3f8-c931-40de-9472-8530d2caa4ba-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 36e7fb5de043b49e4148897b133cf58047b9c8ff7c02665686ecd16504430028
Date: Mon, 25 Jul 2022 03:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658719012
