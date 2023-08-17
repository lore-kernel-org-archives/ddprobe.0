Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B3DB37D
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 06:43:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE376C433C7
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 06:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692254588;
	bh=N55RQ3MUDFAOIHy6TYTwl1RqZaHLsGMRIJRydZfD2m0=;
	h=To:Subject:From:Date:From;
	b=RgqoxRT18EvpshkiypcZe8TfbibJIf7PedojeACq9TPGFM/E8ZdSWlclGR6CjvOZe
	 tunDU413Adw35rxxoMWocKi78Jg5nqBDPHOLsovS0SJwMikVwZiVwDuuTekEO+0mo2
	 4WoWVbu220hHhv5WCZgqmHs74UY9nBH8SnR+3caq1xecmBNX28HZuQWsUPvoIB9Kx5
	 lje/nP0doCuwOJBuiDVXqLEvhGGFLVOmAjQVjcJwVgcYxyAod+/juAyM3o3pUN3l1w
	 HlTTIelr8JyGadZAf2bHlTBLHecaaSnTlYzOtzumdbGBR5yHOtQ08frvlFmUhjuD4I
	 K0ygUOe74gaNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A23DDC2FC04
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 06:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169225458865.12139.2338272045366634626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c173ca51c44c1de3a0f01b1d87ced3e0706ed6f1e13f149cd190974a340d4ce
Date: Thu, 17 Aug 2023 06:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692254588
