Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C717A20E3
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 05:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E77DC433D7
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 05:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665637853;
	bh=d9+vaGFmYk9RDkV2sBVlxhhENHfQ3on3To1ej4HP2nw=;
	h=To:Subject:From:Date:From;
	b=AeeUFHQ/QAPvOuNntnA6n6ix2rdPVjaHQdUnT1zEBhh0qKDEtOTUlrMKdcKWE7pBT
	 Yrd1n4DtsvTiEn9em73Lo0pLD1Z/kXiyID0lEhQ1tKzZvmytUWFXs9rk0Qw0E9eO8f
	 LuqxkE7M/RVIXIojyEvvXazDrCWW9vzBkQp0jG2r0A9GkR/tu/TOoxQiJvsPLo/mN4
	 JH+9NmgL0hyCv0TIOyd1UJs/ihPnL4izeE0TinjggaoLyhHJJv2UBXLJHxv0+eKcLN
	 tw1s8j0TahFhOZJcGGcIEftK+F9dP/ANVEsqCnZ64iUDekrRavMVpu5IDYhGPKSkr+
	 aRrcFkpQCvmTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 540F7C4332F
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 05:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166563785333.31602.8683691341874313818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a618414bbb5464f1771428280e8dc3d6936f7aa7e04d817328371a6c13a4dfd9
Date: Thu, 13 Oct 2022 05:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665637853
