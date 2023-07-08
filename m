Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C4E42584
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 18:17:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E31FFC433C8
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 18:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688840228;
	bh=ygDvLZEglb/5D7pECrMM8YGaFXKjn+wlGCJiOP0Nmqo=;
	h=To:Subject:From:Date:From;
	b=NpXX9QrneqZoX6/p9P6sDBjcJebx+7sZbPbrDPSEUekkU2D8xIKBUadIuKEuDNX2z
	 eqDigUTrb/0T8bswsNKXD5XRsQCu8J1lHhcD1I4qJKS9xlLx33xClYT+BffhJ8c/Hy
	 E3hdTVyd0DO/bCrIJgxaSAUf8jcVgsNmymFJ9zeKRArx5FbB6clKNSiQTRyi/7oF7L
	 9piNNFVtbcagOD45kXYZIBzTEDlgoC1O3b25PidSNE/PbW4Pl2jrA04+8nzXm8j7gE
	 +lRFI/psibHFSJq2Vf2w48dw4/3WP3qhoG+MtMNeurnruvLiixzscLXF36dlrhdjvH
	 0IrlFlbp6A82A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDBB8EB64DA
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 18:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168884022874.32704.2608134035715477750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac32a6c1bf4b6df3523bd73c63e18aff6ff12f0d581b40465d5422058dff48d0
Date: Sat, 08 Jul 2023 18:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688840228
