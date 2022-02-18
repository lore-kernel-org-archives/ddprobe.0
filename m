Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFCF74A8E
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 14:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645194685;
	h=To:Subject:From:Message-Id:Date;
	bh=UAB5RKM3O7dAS6yWxqDrERkTiRfHH69av9yUOcULHfQ=;
	b=Hcy0b6dA/JoTWU+21GgP9XBAX2pGGl45QyqoDe1zINtQMqn2JHzsA9qHG1RaD81J
	0l+wF16cQ/xqgJVQz+RdAeKaym+rsbWIZlfC3gG6IEdkro7SfZ2uoy7UoR+xriAtaOR
	SB/V8GM44XQLipja+mNYBppGsopFHPrjZkQN8RSA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645194685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UAB5RKM3O7dAS6yWxqDrERkTiRfHH69av9yUOcULHfQ=;
	b=gG+UZPOzUaraKApVpE3IqzzsKvAK6rUwJzaZeCbRABhTraxe7TzwPRLGfYJZZajW
	9HBQFGSbNbFUQls7DVnV2CiD544OPRGvHaKg3lB8qRbxi06qwHO2mTWg0XZ+WMe3pam
	G9Nf2EdCS1Injdj3083GTy8GXkZ6GqtxfDS2bRIM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0d3ea98b-41fec80c-9eab-4215-baf8-cc00f4e8629e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a6c79f89ce3fbf98bc41c57fc59b2f5e936aee1457fef8ba58d5ffff2a73cc63
Date: Fri, 18 Feb 2022 14:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645194684
