Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B449223D1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 12:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67412C433C1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 12:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666960854;
	bh=p8ymOiM8sqwDE5deztfTfeIlaRql7ac94EeUycmiS90=;
	h=To:Subject:From:Date:From;
	b=n2GFuCaGxG5m7yKyb38IVxF0T8u/2m+CWZbIHeZ3el7OXTYEKlbrk3/FR+gZuRbbl
	 pQ7iOSRTy7vQRQ01w+89A/FsVjsSq4Bxh5l6SpiJSN8nWzpfnRUOkHYdu4Phat4MgW
	 TyFeSoWV/etX0ebKf4SDDKrvNjvuhgohDBwtGbWWNYPz4NbhqhwPpGlke4gYL6Ju6V
	 ZACpT/KpeCbq0iCV3HyNg0UCtQB9nhaTD/Zcg741W7yMHZpa2Z9x2iPcY18hLezXLT
	 Yc4cVynYnOUCG2v20AOZagTq51u51KzfLEJ5X/qWvm4HmtoyG3YSWybOEKMXn6C2io
	 IUgS53OPjPz5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 512BCC38A02
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 12:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166696085432.28952.12943340408068822493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 168bea617551cb405666a2ca364c951cc28ba712d5239438c346553fbc2a0e9f
Date: Fri, 28 Oct 2022 12:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666960854
