Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F9EA156EE
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 10:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QDaG7qdK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A647C433C8
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 10:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697796496;
	bh=povv3bFHTfHTKwHrZMNE00xWykglfhVN4epdifZlR0M=;
	h=To:Subject:From:Date:From;
	b=QDaG7qdKrETHmXVkTK9FBMGm+EGXc8vCXkQE/k3c/zmW4hsR3hK6AaKpuyn5gQvNB
	 TK0Lr8JzeUxX005RBLS7Th3tmo3nlRuyyNbDSsuuBgUHtTBnseDqKkANIA22cbRreD
	 h4vd0wuaK1ZQrpFXD7FQOVpXCfd6tg51fzvO8IT3nUqCGCzmH2R1C/yybeQaF1t0sY
	 bk+wcHmmILEOaCLx7nvum0wsrPjBOE66zciFhSemQl7B0RztmJ49ifmV6xBH7s36g1
	 lVDZAj02g9REUkyHCM+o0H1mO+jcuIZivL+hXrxksHx4QN/GN98ThNXjqpQp07TpQ6
	 x6jgknzuZWeYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72373CDB47E
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 10:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169779649645.27659.3565634083490447073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67786030a9993499885ed67f532b34b5b677d588516f1b9e3c91bec22c63c907
Date: Fri, 20 Oct 2023 10:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697796496
