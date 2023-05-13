Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58D60EC0
	for <ddprobe@lists.linux.dev>; Sat, 13 May 2023 10:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 043A0C433EF
	for <ddprobe@lists.linux.dev>; Sat, 13 May 2023 10:47:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683974826;
	bh=Wz5mB7qKNnosD/9vG2kZeCF6nacQt4H04iVdkiJybZY=;
	h=To:Subject:From:Date:From;
	b=CwCACsIaVForD/VLMKN3Y5ybQMTsDtmN6Z/HUl2vY7vgTtuP9qzFJ+yMqBF5eSmGC
	 RWs0YZyAires0E/X/P7OIDR1a1yUth5iTWBOTexizB00AlBYO0H3x2J0xo1NeIW/Xn
	 8Ph13JgWKP5Lsq8lfrwuw6TZObZcZ+bbwETddJSf1er/ZNn4M/xNqPbXsbOJ0UHv7m
	 scWxJjst4ogXPNTVNVydbzGaM0GQqu8iZwJtBMBdeXHxJBmo/yikwD6/xmpHPzuKAT
	 s8GchsqdKOwnW2hkqMBLi6MyddOjNwWQFk+BU3tuJxRAo2T0LoHHQtQdmsFFEldL+u
	 2TtNSOYaWfNaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6C42C77B7D
	for <ddprobe@lists.linux.dev>; Sat, 13 May 2023 10:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168397482584.3600.12123285334664421626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 024d8ec92654063abff9ce413a094b0041bcf94c9afeeefe95d5001e06560399
Date: Sat, 13 May 2023 10:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683974825
