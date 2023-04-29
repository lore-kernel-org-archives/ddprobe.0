Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5395C5672
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 20:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0145CC433EF
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 20:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682799966;
	bh=WGfmeFWNxWtuwMH9T3mXbj1pRZF9BiTNndZPoI7Kq5Q=;
	h=To:Subject:From:Date:From;
	b=u3JkRDgHbEp57BWlPn08K0TWrSpKK9rf1IKrNdytfmaAzyQnMfNVRjF+DSac1dxpF
	 QVi3JmFJhGMgm/sySnrtwoS2JcOa7ciG5LOzigLnKeC+6OqRlRTZ4V6UT2+/2ajFoC
	 /DCEAzl27WVCQH2yqKqBcwZ/W4XSwWO/4Bb53JL90RCuYo7bo59vRE8gBJ2hO7be+o
	 0pR4brHYFgoeNNqZUo2+qBk5NKqdUHd6UZqMbmMVcCB1eOQgiDMyNuQrZW6sQDAfaG
	 1sTpDD5Zt2DnlOqGDc0aoEzfVPX3S6aKB48hyn4er50CjCscODufDmf3p0yOxiG9r3
	 dgf0RbYjCDrCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9437C77B7C
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 20:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168279996588.28583.6929014612523344164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcf48e587cfb52e273a69c865206231616975cd8286e381197fcd48ee7108d49
Date: Sat, 29 Apr 2023 20:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682799965
