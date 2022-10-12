Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0B2F8F66
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 09:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AD47C433C1
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 09:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665566453;
	bh=wkg45t+D563KLjkmw/tKT94iuUWUInrTm+u1eumDTEo=;
	h=To:Subject:From:Date:From;
	b=hlB9fA77aOwwlZj4sAWnadAwI4TDJEOu9IRzY+Gj/8Uil+bVdcn3KYsBEiXocSxnK
	 +bR1rLLqsCXn0PDIZ27Lb6CsxUYdWbQsvzu9owFoQDYPnlxzz592Ac3+wL7w7lNnVM
	 KKtnfDmx06RTfvS9fDyCZO0YbEWm8tDnJWCWreCd1s6GQjPxLcmaOJzmT59BwxX0+0
	 gwOELSPTGN6K1VFZZnDpyA2wBsrkRNXG1EyI/QWGdYGQCwfDsRFd1xe0IZLdHwcCr3
	 6htRCaCwvoh5XrB+qoTNY5SM0QEaGgjla0S5ZmIjj9uUkUxNrg9+gCG5nxhl/7Nhg1
	 VejzCcDdmr1UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 533CAC433FE
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 09:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166556645333.15658.14585076903317775595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0d9eff9e01e97114ff1828754dbf5594023f69eccb15c548252af19c9217396
Date: Wed, 12 Oct 2022 09:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665566453
