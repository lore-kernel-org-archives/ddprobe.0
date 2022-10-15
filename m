Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC5BD372
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 08:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7899EC433D6
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 08:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665820853;
	bh=/M2pBmAwpSTVP1OA5FdqB3ICaLA/nKMkOGwQ/MtkQHI=;
	h=To:Subject:From:Date:From;
	b=vHpTaX6kJskBmgAcElE28jteQfeUxQWc7v3ce1OPYWwj9sMbdnoSbk+gbTH196QeZ
	 lVDNtmj1QSPywUdBy+XDbD+sw9r9PkR45HA7IvaH9UruZzdx7micnIYOMIBOez2xqY
	 FmCoEOcXNgKvUqrwnb6Sji4ew9OlElJZaf/G8gHxfPmOg5g/gxH9/dP+nP/gm6VNM8
	 z9+YITmPM8pZlaNs31tTUMxv8RS++7oJHTkx+8lf8PDbpKuM9a0l0vHFrTD7FzPQ18
	 MNuillxkuwXZ2CW3r0MwB4d+1pLXa4MZA1qaD3r19piY1yGnKbyaBKHpJyyyk5/K0r
	 RBtnpASRl/x/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58C6FC4332F
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 08:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166582085333.26215.17709095854844795532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 024b3160fcf51ff5d861c845a49a5b45b316c8dfc3b7846a0277ef2ee7e9dacb
Date: Sat, 15 Oct 2022 08:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665820853
