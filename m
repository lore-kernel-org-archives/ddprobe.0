Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 417674C8F
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 07:42:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4E6BC433C7
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 07:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690962128;
	bh=PgLoo5oB12gZDNuPtYIS5UMSNv5JICaLkaOsMpq7Okc=;
	h=To:Subject:From:Date:From;
	b=ttCu+AyD70HGolBvqVKP1grTdE44ty6ye6Fw2D5vnH5icXzrOUtoNCEjooSJcHfNx
	 uOERYOxzJWqbkukiak36ED7yH5nhadfDVZbgONZ+gnhyBP3RMeJrr7EJZLr/L6l9Uf
	 vSq5L7YaXdIYrU5oQMxS0iJOWNFD1HokMnjJtASTGq8D+f8XqiM0Jqfg3l0xejAJGE
	 rYFbK99o4vyibBxJBeGh0QgVJfgiwYXWU2dMJXSE+HL66Z2ydmECgb054qgHpmfiSG
	 Cbyu/moCaEDVuxQXadgOmeDK0qNwl+wkc99pyIUC5Mfn+qwYTc46UBqkogTeGo+jcE
	 d4fnw5vm5bT4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92A2C001DE
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 07:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169096212868.10747.11651628353010555199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25f069d496545ee1ad6104c91cf7df1a182a8222bc85cb7b31eacb0df8dc0e01
Date: Wed, 02 Aug 2023 07:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690962128
