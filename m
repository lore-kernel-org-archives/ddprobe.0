Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEA7D2F2C
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 14:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 93D00C433EF
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 14:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672584087;
	bh=VMW1rp7IUnVlItLD4WRZCrekYaj5tVNxebzBhwsVSBY=;
	h=To:Subject:From:Date:From;
	b=pCLbMJjM1zCOvIRgA5o0Tt6MFSmT7YTWVx1OQHuIYA92A7Sj1N694kt3k9yxiEO16
	 VJuPQL3HeYzYt4HEt/r/MJ6PyleHFK+BLYXtYal3ynO3bqQNRtthw4YErUwy3Oymw0
	 e8CUeP9mfGEVGVi8NTjipYpVjStsr3LJr0OdE7aMWFyyOOyZgyhns1VO4QU08GzjJs
	 0gWTxFFzf35mA/+Ny/vjnMkTSD59I5UetaeBCANxatvJ2cTK4Nf5sPQupbufxwaNp2
	 +lJvIeF4BrdCoRlVs9IjHfAmWbq+v2JA1TZBgZdu1EFxZ9SooGBtPAblH11wsSLNsV
	 s8GVWeJxRiMKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72D5BC4332F
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 14:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167258408743.28340.14097116340956628086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e5f7f158680b43adce3032bf86024a6a83469494b1016a29987c0b91d45887a
Date: Sun, 01 Jan 2023 14:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672584087
