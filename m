Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69B90182AB
	for <ddprobe@lists.linux.dev>; Thu, 14 Sep 2023 08:14:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD3E4C433C8
	for <ddprobe@lists.linux.dev>; Thu, 14 Sep 2023 08:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694679248;
	bh=j4mMB7yTYqOq3p7PfNfjGn5HVg6Rmdv2pAbSCApT+8I=;
	h=To:Subject:From:Date:From;
	b=TBmFXt/vKPAXwoosU81vEx5jafOz5uKWEJUJ/oIFzfLH4/iO1iysoF3agLPb+Q58d
	 FVck6UK9wz41qkM8Jkj480+pGdpWexF+DvznOpi0e8gHuvu4CjfSwrYeOIXzIb/Tod
	 KKQXdnYqt1DVBIg5VfTxSkDt5HlFxC6FTVw4C4wEPizpFnC5EA8gq+8pXDBMqNFplH
	 Czyxajv+Ar8Af4DZpNG+JF7r322PFuXKDEN9ACNKSTRw+XXOL58lm10/A1dNrn2LyC
	 XAVv4Cl8OXYAzliZkuQPMxjA+OSbHgdaU9sZpPu3qdbJnwy41p4RoPv6m5ctoGZFUX
	 vSnJeWOrpJVUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D33EDE98F
	for <ddprobe@lists.linux.dev>; Thu, 14 Sep 2023 08:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169467924868.32298.2509137549050833096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d2a26fa115f7511b122c7e371f0f6e37bb737eaf40a9c7047f6dcf5053e4c2c
Date: Thu, 14 Sep 2023 08:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694679248
