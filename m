Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63E617472
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 19:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5B0AC433C7
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 19:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691869988;
	bh=66ad2AIh9rxCa1VQbtCpCU7EyfgBx8O2oiygcnuL3lA=;
	h=To:Subject:From:Date:From;
	b=kqnFhWrhFWvQR8ilXfDMCfRShyere0/keH9CDSyckvQw0C6rT3kwFITueTJGEx6fu
	 3yjCmLJpzPeU2kHlp3RE5yobJKMf4qztVzySdI1XtLJZFp9ywBLE9ssp0ijwRlqOY9
	 9+XRD40gjpMRsGSkj+/Fs0Q5D5MrxeDCIBNY9MSqrad7+J2r2J1UCPbtPMU+Mntv5Z
	 zkit1ws+DF+LZ7gbJb7r97D17f50kyD7xKeITfCXb5iWD420PPP2lAbpLS75mxTfK4
	 o0QW10TT1jRaK598xRLUXpiypbq4Kie/oqvlwbCTzIfkgbteZ/uqHGfM6gXdpuQ/VP
	 HkZR29JNKlQdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A756CC001B0
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 19:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169186998866.16550.10476733061729109310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64cce20eeeb640f95024d5648a27160a51db255d6fe6c43f7f64934844f33f0c
Date: Sat, 12 Aug 2023 19:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691869988
