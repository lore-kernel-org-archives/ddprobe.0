Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D992C8F6F
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 20:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 858CFC433EF
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 20:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670530287;
	bh=72XLq8YxnMXVXm9tkARIrU5tFKampCCWAWfVmK1tlcA=;
	h=To:Subject:From:Date:From;
	b=T5mUG3GbzvyZ/hN1R6G6yNZfDfuwxinBo3azIrwV59jKpidfNGDXDD3C146dnAiTg
	 k3cdaFFedQad4tdfOL39ebDIdri+GwwkZBUumMMHe49PhRf83fhu+Gfv5WKpj/Tg+Y
	 67nyeHCTjzMZn0dngAfPhqD5F45Tj0gB2/AEA1FAUs5WONPCWAJz/BEe1joHDCihxY
	 v1nlrO5iEd+XZUvCr3NPrBlTF/mdn+AP22tqU/vRNcC82OpR537Z8D11kFFf6oLS0Y
	 KI4LYsIO4IkgRiAugNEzxyAdApagg7halJI8aQuojtwIzWLXfA2yz/fF8163rLCOoD
	 QjuHV/k3zUJog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 651AFC4332F
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 20:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167053028740.9810.6632198680477487113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9af664a5018835af7c0ab19f38a39b991169682b3f79ba2f271a695cd5b3ec94
Date: Thu, 08 Dec 2022 20:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670530287
