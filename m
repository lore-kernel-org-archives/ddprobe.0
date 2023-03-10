Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BE6D7B
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 03:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3D91C433EF
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 03:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678420506;
	bh=Ku492MvcFIEx3vhX1crU16DdmzsDNbiWSkVbg/L0LBA=;
	h=To:Subject:From:Date:From;
	b=C8RdMEK+hJvQjfiUtPCNzmNgrdhEQzDBBLAif5gjtlmk5g4rmG0ErYhj3m89stP/r
	 m1Q2DIAvDvs1j6I39ckHPQtoUgeV8z1py9NpN40SAHcx57zM/JbMq4BWRpTUCHPKtp
	 PP+EpKJ7QXpctpLBgB63/I8xp7WgQ2CEI3EdMBqspzFwMoEJtEfLe0peivbEDTDTQv
	 U2E/wDnbEd1oBcXxNWLQI+eRr7qUFT4nsmp8qSHbBL2GAEyzgczpQR+ENTgocvBNzC
	 Z6pWbkVVf14ZotJGylPRU311x0rRA8iaJa4R/PoHvw0OfGlwFXmjTGS69OO74E4YdV
	 AdtjFwKqvZfzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3543C64EC4
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 03:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167842050585.20704.13269392479199885482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d3b060c316bb50515d44cd4fbf7c74a55a3cab5d98dcce582f80b0d0c993d4c
Date: Fri, 10 Mar 2023 03:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678420505
