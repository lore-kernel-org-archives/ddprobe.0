Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BD18D2EA
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 20:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0AE0EC433D2
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 20:25:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681935906;
	bh=N3Pk6f923JBAGRUIOVGxwcxClQWQTM9+qFTO7ZdwpIQ=;
	h=To:Subject:From:Date:From;
	b=WgwnY1PvG5ujbuol7O2LDCIrIuXvjP0y7hL3cmIVC/pMtRYA/niFDl83mXwfVfY9/
	 53MramKles3FydhNxXDpaqGrS7GZDFjKQpqbv2QsECk5oamDl0Rd/2q7fodONsV16A
	 WP44Y0LaDA0nd2sN4dN6dVEWSBZJZhqIEQcMmHnD/zhEsZVW0RUOp0k530ansZkanK
	 Reew0X8p630kAeJ+kHJSOMB78ViwvMtTjCay7o2xDPUycVpMfs46yFT/i0V86f3y1y
	 MZl7GZ+Bon+3vhhz/zn/Uv6Ov5h2kqx8cdWZ31f9tSTVBMqBG/fja6pIRmdSoXg0/u
	 NfX3O5xzNK4XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB9F6C77B73
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 20:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168193590587.30542.16703378284625669205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 701b2c6b80ac71b5b0e3f8e17eef6e94fe3480ea5a1739c428be086d438b3578
Date: Wed, 19 Apr 2023 20:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681935905
