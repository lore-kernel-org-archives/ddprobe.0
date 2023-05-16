Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4517E17CE
	for <ddprobe@lists.linux.dev>; Tue, 16 May 2023 02:11:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E85DCC433D2
	for <ddprobe@lists.linux.dev>; Tue, 16 May 2023 02:11:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684203065;
	bh=UtAcewguyt35AY32RsyZSCqfqjt0zG/2woT3FZekARQ=;
	h=To:Subject:From:Date:From;
	b=Ks+NdgT/ZOxHwcsUcTwDW1MFG6rRgCBZoOg/uqYchxKpv0Lkx3BpKLdXnAWORnzsv
	 4cojPJgd5e7McmHLHmr0xoW2WMoaS5Iwg0zej2iOAGcBEPC35+/+ZtLRVIqtRfXmqD
	 bU7IF/PITHccezpmG0yM4bUUefMqvzZUIdsBQTdlXo+kQyhTpNbLyhcT13yOs8UPlN
	 oRUSrwCRN2X6hsC90HJSa9QYFZPCmKxitx0g1XqYDLvfZjLCQ+25qp2G08gIjxRFDJ
	 2GCRphioUFlxzfVH720TCu/uBV91xWuSwmHjhbLSsXFOIJL6JtuzmEn3PJ48r7J7Os
	 8LYsXulmAvT9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6822C7EE22
	for <ddprobe@lists.linux.dev>; Tue, 16 May 2023 02:11:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168420306580.11510.10275488646689503818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e1b4d375a593718066bd11522fe47dbc98ab510f2f972516827933462c7f413
Date: Tue, 16 May 2023 02:11:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684203065
