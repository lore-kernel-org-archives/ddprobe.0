Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56D1117FE9
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 22:12:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D409FC433C7
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 22:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689804728;
	bh=BcW6gqurh0vAlCFRSxt04YNjpt7DRnIdvz7IyKffv1M=;
	h=To:Subject:From:Date:From;
	b=ly/OV3H3zJI5WC2W8F/nzztsVjfNkN2pScH13QRFWaqba07NPXjCvN7C8mitNqNiy
	 WNd+aT6Hd70fLCVzHRRDlX7rwrHAwg2eNfk50JKQd+a1y92lBnLl780/i0+RVgEkXv
	 LInbMtfhO1yvBiLdL2ybWWA361Te/IeBG7ZKoHZrAd8NVgJx8w2oml8jC6tez1iGYM
	 PXV2u8qE8xG7ZBRT3hjv8itVlZVDckyKafRde6zS2p/VdzwJWcaA82I2rVADe23BIA
	 rIBt6NvzUoBxyM9tcNVDez42S7L94Uh2GWEJQm+Qfy36exvdqKLBiQhWL/b32Nf+SD
	 vLA1BCgnudBIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A90E0C0015E
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 22:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168980472868.6633.12791062020111329970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe6cbaa17050fb0b225caa93f6be1dc20c06ff79288a4794e7bbceaa985dae42
Date: Wed, 19 Jul 2023 22:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689804728
