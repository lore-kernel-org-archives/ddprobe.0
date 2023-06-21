Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A3B0C2DE
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 10:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0A26C433C0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 10:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687341788;
	bh=y1fkP5TS35047GsIxTQeyAPfOFOX32ViZ8knnY6xcR0=;
	h=To:Subject:From:Date:From;
	b=cc1x7I2215hkTGpOOgcb5v+bJ4roMm/JsgESIr0aMtF5p/J+PJth/amwRLVpGrZtu
	 vu9qjGClaEwhM3bAyL8zXcv3WRFK2vTHtQKGuib+WuNxwXy1rU4iNOC5rzVgUxvFbS
	 pNuEIDn3AIHN6eJYdrjQYQtouxBqXUj8NjWIfXCSGp++FFUtx/NwU/cSw70kTU5wCQ
	 CxaONjRJUXKyuOPoCgl47RNOk2MrzRyBBb9YDMl8ABTCvq/gkVI2ugFThOdRaToUFI
	 bkvaCSvVjJ2SzlJ3gqqXfXwYRAWLjyqGLe+AxC3X1KWTUqnrfTbPiY8T7J7ArI2SXX
	 8hcevr19g34MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA548EB64DC
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 10:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168734178875.32054.13509308240201641914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb790088f83ac923a3c631f613d40b30b0e0c12c32afb4d62557a1011ffb2496
Date: Wed, 21 Jun 2023 10:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687341788
