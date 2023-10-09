Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FAFA3C681
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 19:37:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="twUKdCie"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E771CC433C8
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 19:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696880228;
	bh=VfbGTbOAv7IJNk+3dmienhW2NXAPV0zFKLiVvz4HxXI=;
	h=To:Subject:From:Date:From;
	b=twUKdCieX8sQ6knGudJ6Gc/W2nPUU/rBZlX1RswobgHEDOCVYNB1DiMIIXpusCFuS
	 5PZu0qeB0lHj0+XYcmEZ0HNBB3rloJsjiJPxYvpAnePOWieYMgfjEg1WLx0JY2WPI3
	 7hGOgMk7a/UvVPNud/Tc0dj4BDhCDJWFUikoFSUSt6741C/OKmijk6Q+P9iZzB5xxj
	 f1psgZIDdm7tci9XXpKTgGqemXm2ia5AupH5u8goHM31M45utwtBkDC4G/PcrmV/bL
	 7RTeR7/Ehk+kKou3J1dHrswdu9xzdx/VA5Ls4kLVyURxOOki9N0IgakEN2U7RzQPxL
	 1Q4dTrbsTA29g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1A81CD612D
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 19:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169688022876.27787.1455340924676958047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4a4c2a49fb8dec5e753516b56ba333bae5c2f2ec837760f3e85baef7acfbe1c
Date: Mon, 09 Oct 2023 19:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696880228
