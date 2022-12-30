Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3E737E
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 09:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B38EC433D2
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 09:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672392087;
	bh=+Nn4SmViSAll9+YSWV48DIYRxFs4E3b1aajbq1eBcZA=;
	h=To:Subject:From:Date:From;
	b=sQ/m+FQdfqNPOt3b3eO9XPHKLabfbyaFTTEO0NAEkxXAakLrZ0XzAfuq78d+CZTI6
	 si318iPVTjlYEkbTtqM1XFgNjxTp1TKmFMjrHjjJyxNTeVXcZa8qF0F82Yfb9VoD5Q
	 Qmho73knjxjDDXYAjYnHKNe+r4Rspl/MRV2IX1S1sKNvmXqc8wnCpswGGvsRzvI5Xs
	 G/iK/RE0dLsUnRjkqJxbAO60nqeVnz3S5fGfWHivSm3fc9edHzHA7i4kJugRyrzMxg
	 f81+CIyqbbWz4jvkVMtTNY4sHkQrpnjtQkd3Yr2HKWmeZyHJtbNCjtfnvEuukHC2Ul
	 bzBPNLbHIMyBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 620BAC4167B
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 09:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167239208739.17099.14305813987156395622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5ab0b5062cb98d67fab5dd933398e82e813b6b5b3c739940e373ecc608ea5f1
Date: Fri, 30 Dec 2022 09:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672392087
