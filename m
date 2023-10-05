Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5868D37C9D
	for <ddprobe@lists.linux.dev>; Thu,  5 Oct 2023 17:17:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ia8Uke44"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2059C433D9
	for <ddprobe@lists.linux.dev>; Thu,  5 Oct 2023 17:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696526228;
	bh=4iVFXGfg4DbSorNEAnmlwxiOTgAe3tM+JWfIgLPnXwE=;
	h=To:Subject:From:Date:From;
	b=ia8Uke44nRK0VJ4gGZDYtzoLE8CbbigG3+YEuWI+88XeYv0+1/Xpt2CP81y6682CB
	 gj+YuSiyma7ki+t6eTojposVCAY9JMS1wwBZGIhzXlijj5O8x9ftFIeTjfAfUogw/E
	 e3SiRQsW/V7EY6ISALxHCi7EsfdsWHNHqy+qe75799tLxTniCjGdwIbVBuwP7IzjDm
	 wS2meMX+TCAqvCfxCacNgRXmT7yi9fVZTgfVGfQRXl5hm4uEEVPG5NKrgtN7z4zCB4
	 Fs89rr6Bl2I6QwcHKzQj4ulEkHjqfdwhw9UZIWykiVCtqMyMItJd+iDO9FYFSU8moO
	 sxGtkh2dxgHAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF80EE9271D
	for <ddprobe@lists.linux.dev>; Thu,  5 Oct 2023 17:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169652622871.29448.9453014461495668276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1eb13ab804b568822d58b8dc219b28869fb4cb75b71b915f0bdcc25b4a7785ca
Date: Thu, 05 Oct 2023 17:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696526228
