Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC10B17F0
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 21:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D44BC433D2
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 21:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672693287;
	bh=+tWeb22avls1YYQECBbPKWwTuAXSxnbggpN0HCRuXt0=;
	h=To:Subject:From:Date:From;
	b=WRYrtgz1R7oBEnMSnpvqLiiTCRtabb0XvlHhPxwfOweDSFhZI5BOx4sRcJfx0pRK8
	 H/5jZbczV6r3lZudXTSVDMBy9xZub0cVJ8UzdEVf783gGc7ZqjYPDlcEc85OVO2jvY
	 IdvWe7RnXy9+1N+By9j7zoRmnYBoQbysq1vFXMfFpxMtO3KuAiTJLS+7Ya9b3JaCzc
	 h27ks+BcddXkpEEIN5zCCDb9T4TsSr9ZDSaqqIKX1P0lSP8EdjjnqqvdZKSYHOI+l4
	 mL+xfeix5czlQ8VZeh63U+WpnKSpCGAJbvKnDGOAQz5xmJ/m5B7Y9EL6IPzuK3dVY0
	 M3REWrxKJ7drw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 710D2C3DA7A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 21:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167269328745.6925.4009269746964363482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b0b67794b8b3e54527e0e047b283472f7f34aa0b80e9e86d4b546c79556294a
Date: Mon, 02 Jan 2023 21:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672693287
