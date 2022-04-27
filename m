Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18E227B
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 22:35:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651098958;
	h=To:Subject:From:Message-Id:Date;
	bh=JaPS2j5y52YxudfsAashdE1cB4ovAv4BrRBZr0P5xEc=;
	b=JPcTnIhPMADhFuiD8vhZJfLTl8oApAD79Q0GC7h98sdaRDyua5KU2xoMu8ivHnso
	QPOvWIDxv/4CLJPghp8BdZtvnLpmWDOiHPQ3Wa6d23XEoYT/vFG0s86G2NctCb247xC
	OCPZ2Yo/rsGgO2+eIvc/9Y9VQSWzGQj1Hs4LYsjI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651098958;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JaPS2j5y52YxudfsAashdE1cB4ovAv4BrRBZr0P5xEc=;
	b=dpcqwcFaT3+8O3keYLXLCfa+KG/gq3iGQO1NbNS7UXOnF8O6PX5nW2dQ8rTNqVS+
	yY9H0nTji8Tg5r+w7/g5y+BcV3or7amOkv87PdflGqjHeCq3HJjeiVyy/qdkDF+1bvB
	EcHiTiYz4j1+GBnsJ/9jJX2oJZ61t+GJ+dMezqQ4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806d2ab9cf-b23b9a96-d6ca-48ff-8f55-7a696d7af67d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: be2ce797b77ec2c743b05373d593113ae3d36759df65aa03ed973bb7681cce43
Date: Wed, 27 Apr 2022 22:35:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651098958
