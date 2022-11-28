Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7C52A498
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 21:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 752F6C433C1
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 21:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669672254;
	bh=uF5gJQ5SDw4pjojDH7hXMFxuyYZtXt8oXLnG3xz9axw=;
	h=To:Subject:From:Date:From;
	b=D9HoDdOUPhRjpAHWXIg18sAlqf+ztinibl7ySshX+Rg+FVFZdvz2Mq/wUSQfx/3rC
	 mZfi5IcKa2Ddw+8U7uszvJhDs6yS/gIAfdD35Md9DGE+yblK3LR1GJUdZpQfEilENZ
	 Lk4+zjUVxeUAy3BwsFcx1iwOY/45LNBA6Pp400QnnjpkxvYzXe1YlzUrGDX+cSiHyK
	 Qmuoeww0x5IUcKviotXpnRwi/PkQNoLfbIJSPaG4ye5G4dGS1dIh1UjnMJ4juj7wiU
	 OX9PAjlYuxseGtipcnHaVs+iLQMbcuD1pW/uatDwevQcI3GG/lldHEKqIMwNe/oA99
	 95IZr6EjHXZog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A2C4C4321E
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 21:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166967225432.14257.2772523747920424179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 975ceba3159120013921073d42cef6a45c54442626d75e8c23cfadd5e7f7a681
Date: Mon, 28 Nov 2022 21:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669672254
