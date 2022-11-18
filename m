Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C134FA486
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 21:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EF55C433C1
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 21:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668805854;
	bh=b+IBZJM4gu7KgnSD/mvGfyfZF3RZwyzKpfAfxToZXsM=;
	h=To:Subject:From:Date:From;
	b=JGs9ntZ7yFN9TgTdP18Lyy7kmdTxvQQrO3MtU0L4Gh+7XX1eETCYFZ/qnhiRLRW86
	 QIIpSZW8TrFKVFmX8zJKnO5TiI+xXqkp2mBMyJaXR/iLkGmmtaWNa5Ok0317ELg3ZX
	 N9WOlYOwyFip/cOvdY9Nnr3XG79a488P3Sv6t/TKwDBjotTVu+IurdSKHmtmlhvtT0
	 dIqm8BwzB0UZd/swOl6MOA9/Zvl8pEv26iElGsnQOHd8zs2rSMYvNDFHPGGwiT1i1I
	 KteVbNAwx8uCfAb59lZz8F6Mljtj6JglnI0lPciZOiBARW4ey0o5OX11lpdKuHNJ4r
	 YKgMiCqp4fFTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54984C433FE
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 21:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166880585433.27829.17079119608191253440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b96aab557179d6c332f428f830f0e363bbf5a02d4d6ae39aa7a3a320aa4a307a
Date: Fri, 18 Nov 2022 21:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668805854
