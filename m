Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5010923C5
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 15:21:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E47EBC433D2
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 15:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681053665;
	bh=LLi45wCHCydsnyacok4DfuL35hs24Ra2QLTtRFd9zuk=;
	h=To:Subject:From:Date:From;
	b=ewHDGbOXXerscicX11CgZo1wXqkceQva1dkzHHhAi52vyPnbTRE0VlcSgtPUioAcr
	 37sXFpNyrdMG+O33jZavT2PV8UW3DXYWzqWtraPrWovqU4XV4gLsmVC30Upao1aVWv
	 RJQGaTjJb57+NQ0wNNk37sIEkU9O1ywT8PmsVPzZ67OB3bEjyp9xTJ15g+SrxK1MnA
	 b1PgUIK2rDI0s/Sp1Gc5t/mcOhNF0hYOExWUa67oenCUpwNa8ztgpi4Vc+/HwRCcbw
	 GVVwJMLKPWMnaiTEFXthSduODqa0zn65pwzxq+c4p8oAr1JvVFcRe3kvta4VnRuKSe
	 RuOS5EdC2PrZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9244C77B70
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 15:21:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168105366581.24695.10211490017119935792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64095f15af5c4716d3e7742920b19fbdd561866a2bc49b2eabf22fcecc5a10de
Date: Sun, 09 Apr 2023 15:21:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681053665
