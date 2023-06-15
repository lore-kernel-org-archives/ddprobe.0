Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 577B7625
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 03:57:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9E05C433C8
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 03:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686801428;
	bh=4Rbn5JB3uGD89jCNr8k12eTVNLN6x96pzxayaABAzNs=;
	h=To:Subject:From:Date:From;
	b=RZ0YPMoiP+W7c8WVV/NXJ0SER9cM+SoxDyVXWX3Q5zGu0jKaCo2UTgWqNu0Ah/wrC
	 SYpvPoLc7mFTIhH0jyFo+ouL3qcIEByr/fTBRYCfbxc4QSruUIiW6mxXVZ67NQpMCj
	 ThHwer2S2nu3zu05OzPg0Y7lTVVc7RyQOs9ouuF1Ym6AhjESLoWyn0rNaqm043NF5J
	 1UrShQRydKhwW+rXAWcqbETrwMttN0M2pcuuLXVJXNv2O2PjsvntdJMNa0SrEyBO1W
	 bPhg/Aqr1DgDCPktZBa8K1BDSgB9JnFOr69SsmO2j4wCaL5Ja9KIAZW4hR+81FT3gy
	 7WqEDjMVfWYKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A805FEB64D9
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 03:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168680142867.12944.10854900484441279759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31d9e0e066ef76cfe8a364d2e298edb3271578294fb01ee79900228d7b34d831
Date: Thu, 15 Jun 2023 03:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686801428
