Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06AC917C0
	for <ddprobe@lists.linux.dev>; Fri,  1 Dec 2023 21:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jt3Gmtdi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86FBEC433C9
	for <ddprobe@lists.linux.dev>; Fri,  1 Dec 2023 21:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701467896;
	bh=DIIj8tneq5+NvueM+wKDoVIP0tSNesFrAfZT3Y5Usx0=;
	h=To:Subject:From:Date:From;
	b=Jt3Gmtdisvupo7yFaeQNbDNWE4TbpocJc0c2wl+Ki3nvT2SjLme9n74OhVeoptPTQ
	 lryGQdkx6HxpR75qhcKuZMVnYp9d+NauyFJbhbcb7sBL5IeuK7QuvKwIe0vVPD13V0
	 yZpmecHVpL0MCj6Xdd6sqzt1U5u9bzTemA0jcCUSW0vMBRhCK5iuWgmwrBL3yDjqEB
	 IruX4afQSKYNY77cgs4ANTB/PcgMZd23nwadg1XDyPTWPtBeHfgsrBtx57yO057/c3
	 kOcZCaxrFV2k7Bx0dWrGgPIJvonmbN5Km218/lWxGWBVUbI+N9MfCk9qyjiysQxcj1
	 t0RyCY7OJ2X+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DE81C4167B
	for <ddprobe@lists.linux.dev>; Fri,  1 Dec 2023 21:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170146789639.30112.1142619167860836287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4951c55b9a1204d849ff23e3d3584fb092085d49a15dccd66929187672910e20
Date: Fri, 01 Dec 2023 21:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701467896
