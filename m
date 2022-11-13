Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D961C10F7
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 09:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C059C433C1
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 09:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668331854;
	bh=gAKQGjWZliJ2RIUxiM7mH2wPZo35SxB4t//NJxIBlLA=;
	h=To:Subject:From:Date:From;
	b=YHSDBrg3/h9Vi8nDHggwUH1OqXf/dkKBo6ebMUx2+uvp+34XG6Ml/oIr0UnEzdvE5
	 E8LYKNqIIavRtp3csWAnWwE9ARj0VfyX7SK/LliZY+pLrLzR/Bj6fntG9/68rYHgyx
	 kati7h7/c6QHsjhSunEglMP0JJW0l9NWADgo4s1TCxYDtlZ2KOS6UIber2s699+JKP
	 Po2L+LaiX/lvjROHCeZ/mBwhYvX61BkZRpVGGVMQgmXOkG3w8uo33AP1Dp2Ohfdxnw
	 +BS+QhO2F1O6GE07Wg33r025PgL7dvMXQ3TKLK2X+exGHlo2CDGjJ1benyJjGy/0Sm
	 kWHxu+yG7VjIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62732C433FE
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 09:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166833185437.7753.18090846515770120988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b146378c63fe6dc0d5cd850b28f44c8ea4897a741054b21833e405281706770f
Date: Sun, 13 Nov 2022 09:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668331854
