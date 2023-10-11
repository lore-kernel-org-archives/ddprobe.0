Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5877BA5D
	for <ddprobe@lists.linux.dev>; Wed, 11 Oct 2023 01:07:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UtUgr6E6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF453C433C8
	for <ddprobe@lists.linux.dev>; Wed, 11 Oct 2023 01:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696986428;
	bh=tmCMslJ3ANA1mO/Q8H/j040RmVROsNAfFzR9hl4JwKw=;
	h=To:Subject:From:Date:From;
	b=UtUgr6E6jp+PIdNcCXW8BWQooQ1eigE+4tsJMyS0xo1HGxw+S50D6WKD4eFEGnmJS
	 tDQmuuKCjqK4ZauHyW20gaSAc73BchKX0DKd9dTbRVEH7HJB6nJ9ccwzoK4owAMm0o
	 hlqeCF9GQ43iDX6UOkzGEpdqTmQAfEG43uqfxZS7BH4T+mgzfZsZujEhV8hg5M0SVT
	 LAVV3ao6VIlgpcR+gzIJhZlXQ2eM1F2LR0Cdh/mpHWcUmXL0F+7a0GvG0QIX8Pfc3l
	 +F7ld0n9kkoBekssVW0LZ5uchVWEvbElJ95+rceB5oxqXxRywwGrVg24wPRBIjNFWA
	 wKx5oCYZY8lXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5F30CD98E0
	for <ddprobe@lists.linux.dev>; Wed, 11 Oct 2023 01:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169698642867.16912.16160415667546963649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0781eb2b299313b14e6e969a6e02dbffa4c466afe4806ac99e2d1b89b2f207c3
Date: Wed, 11 Oct 2023 01:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696986428
