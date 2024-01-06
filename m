Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10C7F101E2
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 23:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XBABn4pC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89731C433C7
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 23:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704582496;
	bh=ZSDrBcqSVVMA9gt2s0A8VGQBgm/KN+RjH+DwcWrZp/Q=;
	h=To:Subject:From:Date:From;
	b=XBABn4pCMCVkW74bOlRryApTm4zBz6NbJYioPvJhXsW1RMd/elvg6Ryr0nm8oyG9q
	 ZVPcVClVtLDhp4W2GxN5muM4w2Y8N1UyRwPbueqsR3u7XoUr/AIVEgLKorThtDTG4S
	 gBQV4YmGumUeBGa02tIREFdgdAyMohRPbe76EY6W+vYa9OMm/sbxDLKfmjGRzqx4vf
	 ccozX9+spb8KDAMglZKpa1m3wVg5YnDMOKX8uhgZbdVu3tm178wCKbDVhlVX7DiMHe
	 NvAGsduFoAvUNrKFTEIrKASuP+EsOB5DahLnb1Fv1E/6GTnKaETtGKtf1z/skMQHGw
	 FMeEl2swDD/Og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A78DC46CD2
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 23:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170458249640.29993.5099341615263286898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b9bb4e5e00716a3d84908fbf69cde85a8ab642efb246055aaeeac9302cbe5d1
Date: Sat, 06 Jan 2024 23:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704582496
