Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A70018AE1
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 18:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lKm117/y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78FCCC433C7
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 18:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705345096;
	bh=FPRLUMcwY/KOi0jwtIAqyDPvOGSsXBUPDU+Ge7AFgUw=;
	h=To:Subject:From:Date:From;
	b=lKm117/yXt+k8+Zfdw2gm9+2DcAdWYMLaKQl6cLHbcOdPxMeVxJVr6GKN/HJRpfbP
	 YDeDZ5GTsRwbzDv8dmAFs6DHAEmjNq4r4I5ly7zrNioN7l/ee93uc7YGnOkw18xAV6
	 CmvKUkCCSJ6ctOss9nAPOlE0c20eaMOHaM5bSdNz/3L9aPt7T6mD56KlSwbEoN/kg9
	 ZHHVFERyrR02e/OnaQeo4XkQ4Mlg51daB0JEi3Ibo5FuKNHDRtExZadgAMVPr3DMW2
	 cwWooaE1YhMAQ9cYDaHDsDgj5eCUie6L/4yXXQVbiGEYSVRBvnFFPncT10i6b0Jndz
	 F1LkbVktScMZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60FA1C3DA79
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 18:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170534509636.10947.8560138322073516234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d48c8aa1bfbe6078ca84830ccb5bddb620c2a94a7e5cdc221c1defb19966f18
Date: Mon, 15 Jan 2024 18:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705345096
