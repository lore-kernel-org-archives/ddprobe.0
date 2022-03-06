Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E3151FB7
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 10:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646562984;
	h=To:Subject:From:Message-Id:Date;
	bh=YACAzB6N9auWPoDLLZxnfmCqsW+iTS74h8VdebYw6CM=;
	b=OaV3FwFplcSy7GQRc7pvXW9KiybsJ1PhdGQLZGxcmFpRkuDypBr1DnEpSzVZCSnJ
	nIIkXL0GO8VKcuztOqjocdU3TgxWK4+ePib2PlM0Ci+0ZHUL5Z34sfOfG1bLnsDcgm3
	bJpEw9zye3HJRBao/wpzDf1aWh2fAnC8Q3GawzFk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646562984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YACAzB6N9auWPoDLLZxnfmCqsW+iTS74h8VdebYw6CM=;
	b=ldFTR8AiBs6VGFnoTeAEaI//aX6VVLlQiGLe/0SrYLrFR4stjZ6jbQPdswnmxtMM
	ju5Z9PxW7bfqb9AjvMtyGEgDDdVBmDi8NF/l3SIBrC8EAzLiZbiJ/zphFQKtXLZCbZs
	GhebQGeR1eTYkg1quzacFL/W91ic8LIEdUbX9G0w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5ecd4325-2894e005-b52d-463b-9153-e392d133c6cc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: de4ee05cc3fa2fbb645ed4c45b922d2689d461deaf3bef64dbc044c5d487d616
Date: Sun, 6 Mar 2022 10:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646562984
