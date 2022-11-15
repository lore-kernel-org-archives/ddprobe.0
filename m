Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA12CAD28
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 12:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CCBBC433C1
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 12:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668514854;
	bh=z2xpwSR12fNaLmX1MEux18D3deMytPWRrjdaYqV1L9Q=;
	h=To:Subject:From:Date:From;
	b=DUrO0PXfLRwxtANBwVYaivUhHDSp+hMWqmXgkfwlgibejscIrAHJQgbLMF7++GBd5
	 mipZZewog1Hw0Us8AaW8Ah3P05v768m5EYlXhKY2G3EUVhEkavS/5J18wdL66eB3Yn
	 4rvVM8BlFkPI6Cgo8LHIjmUfhtvvBL0d/4rkyOvjGYDXnfCJ4SBMdyb1NRvwcKdc1M
	 Mz87sR/MavtDs/1bK3JAYX5oBCpytZ3uzOv0txfulflJOFxlzC3ZLKoEwCIhQxhhcl
	 ravdQCDmN4r9QYAlGYdvZEiad9tQ3V6L66k8/u8bcqiriJNQSLAzQ44EknBwShVH6W
	 OZ9sr8bzgPQsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C86AC4332F
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 12:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166851485436.23401.18245388136698148730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d612f5e1454cc9e196fcdd01f776bddc466b8bd75b5712025af9ba9ca511a92
Date: Tue, 15 Nov 2022 12:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668514854
