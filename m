Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DF25482C3
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 20:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a51CoPu3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8AFFFC433C8
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 20:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703710096;
	bh=cR5tYtw9iZCm8C1x5CCZoDehHnTL8pSdOElHkaa4NbU=;
	h=To:Subject:From:Date:From;
	b=a51CoPu3Cto8K7P9l3LwBAFtjekOeEGnKV/0cSduFn9KzB/3EI2zjjsdnd6Lw+4rz
	 9tChHVQTPljmUPPoQYgngP6KGS4WihPWIcYwImwxS4/gqkB73OY92Ka5O7BcT0+Nph
	 eT7wC2LHC8eNPSO2T8tiP5IufKdVFvEmd7iDLuMozI7nkgzeZYtAD9k1mJnl/lks+b
	 1LGLvvUkf3QOz86cj+xpzGxSRie1QpOgxpM9+p2SBsk4I5qwNtKi1NlShgDMhjSBZX
	 AJAfGgWKcVkbvkt1ynuCwM7Hc4UXimSmGjEYFmeD8JWTSIqSyPLgIkTYSQkoY4YHT8
	 WjzZJy5xJHUBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A53DC46CD2
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 20:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170371009642.26791.9412277067373593107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edc54ab606d8b61a6e1a6ba7f662965b2e68e94167972067b624b5382305f4cc
Date: Wed, 27 Dec 2023 20:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703710096
