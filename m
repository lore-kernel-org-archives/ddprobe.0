Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AA4745004
	for <ddprobe@lists.linux.dev>; Thu, 16 Nov 2023 22:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kdyyg0fc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98FD2C433C8
	for <ddprobe@lists.linux.dev>; Thu, 16 Nov 2023 22:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700172496;
	bh=7ovR8HbADihZ2KMlPKYzyifN+mEovlSiquhlgNIYK2I=;
	h=To:Subject:From:Date:From;
	b=kdyyg0fcTaTtMbBfCue2D101SltvwzecPx93m/zdDnXYseUjCEBP/mNevuIpYJRyx
	 8gX8t9Lvv2bf4nED89qqkmBPYEG6zcl5jchUl/c0y3ocQbRxBFQhB8Cpx/z4lCBhMP
	 cWSHS4tsoHaKnCYS/NPP890YuNuEpYzH4852FUBwpdS8KUsm1R8VVeJE2vZfnN6PRZ
	 THL5fdFVRcyoN7gMDkLoz9c1kRk/kHh4dR9gpe4jsdNosfXbLay3DxB1iEPAdyD3G5
	 9DJQUuKVZmjFegvLVacUtsiBMOcO0gU9Kd6NeWuv/bCh8JrnTEeh+TaFIyArXwJSG/
	 iQmZ4uBmCixcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76570C47071
	for <ddprobe@lists.linux.dev>; Thu, 16 Nov 2023 22:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170017249647.10296.3354313970310449268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eaf52c3f8af498f0ccc76502186a3f5d6ec2862060902337baa83ededc06cc09
Date: Thu, 16 Nov 2023 22:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700172496
