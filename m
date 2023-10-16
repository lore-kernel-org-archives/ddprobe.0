Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C287163
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 00:07:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uCmEUIb+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D280EC433C8
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 00:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697414828;
	bh=zZVBWRNzD2O1KPbMQTfGhXEU5r2Y3x1dBQvaVPE9MtQ=;
	h=To:Subject:From:Date:From;
	b=uCmEUIb+tbq+YgholOs5/6KLit+5r5oVWmLh5jaJpjcie+UHzP4GCFeqnHnXaYXSy
	 WF3NPaPSpugcaGIj5M2Qs18BFc9M1UEaITPeA2ezoXAZluZatxsqJru/oqR3dw7MWC
	 ES/xQeFN8t+NdBPj2xLuX53HB1ahuzW5wXnizC01OdtTGodBgQDxWt4JFGveY22TDA
	 dNWTTeFpqnkPrqPr71+FmUo+CDVnGXqiplm68xEtKcs3Jl+t/NrnzjxIX5spSAzOw2
	 FRpv3Ki9wj9PqwN2C0YLu6TjasYBlzu4jGWIsL044gcr58fL7YH2EfZfy8Gw0Djg72
	 zrQG1cCF3FZaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD509CDB47E
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 00:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169741482868.31149.17924304287450055851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3840ef4c0615bffc3ab64105d9516ce90ce99c12e4c3ce642669ec6331e636cb
Date: Mon, 16 Oct 2023 00:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697414828
