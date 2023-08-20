Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6966B5695
	for <ddprobe@lists.linux.dev>; Sun, 20 Aug 2023 14:14:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0D2AC433C8
	for <ddprobe@lists.linux.dev>; Sun, 20 Aug 2023 14:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692540848;
	bh=ApphoA1f2ey4mqMwayX3Iap86f9YyOe9kOT5L7DaXUc=;
	h=To:Subject:From:Date:From;
	b=HUFwhuW5175DcWS1cZWpJdHZ60jvjR2gP51vSP0jpWAgIhMBEPuQN3Sqv9rklt2hf
	 kOurbCSvZdnCXwyuZLAiXy9ab+8U/NGSRFEalKSS296RCEo3sm6DVgwt1iENU5OfRx
	 G/8RZYzZBGb7dHC1IGXwICtNStVTZZO2S5hbWNXRuKQb0cB7vxgxlPk4Cjvneeut1f
	 tpIewnLrOLk6vzKbX2T73UjRfybk2NcoX1TBB5B5G88nBEuIx1SipPmfsIos47Hg82
	 ldy1cjdi93O8JQm3qK32jN0Oeb3Y3IM7SpuYfxJiX0/2PwYaYiAkb8B6Jq7Av0EF+e
	 Es1oeNv8n2CBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A76EFEE49A4
	for <ddprobe@lists.linux.dev>; Sun, 20 Aug 2023 14:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169254084867.21108.17944702163404908479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe32bc373c43cceba756329819bf8e358079cd88f39c3cf555ac8fba5357372b
Date: Sun, 20 Aug 2023 14:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692540848
