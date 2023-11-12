Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 325E81862F
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 22:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bB50ElcH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 918EFC433C7
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 22:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699829296;
	bh=QdQNWPnzhrEctq50enUsMKl6oe7BTEkeQCXaLKpxMSI=;
	h=To:Subject:From:Date:From;
	b=bB50ElcHPh8p0Lt0e1e3B0aLsDA/1CNN8awMkhlODlP2FDLeesHjROiFXzzYLd5ZA
	 tVHOFoxPDJXpBK3w9O2xLplb0N54irX8ZJ+jfbuMyn+ZT7sA6f+AskO8pSXP1rBoC6
	 6Z/c7dbPq0u5K96JSUmOZaYOkffREbsX6ooIBJYU5sxirn4113H8tX0XkCo6RFRYAD
	 027ClQYSAH2ZlDtEtJcRHwAgQ61Cga6I8pIWZSgdLOEmYlBnizLNbEoieB6h5l4Jym
	 WRC6d1oDC8MephEkmcxDsyiAnNR15Cb7El7IqXWC2J4qJdv3ZBYC2nslmPGX+dsQQN
	 3jhk0FxehcWfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 749AEC4332F
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 22:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169982929643.21720.3020141477553151750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37571f48de70025047c554060ab9eccf1eecb1df55aa7eaff699042b9bedc713
Date: Sun, 12 Nov 2023 22:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699829296
