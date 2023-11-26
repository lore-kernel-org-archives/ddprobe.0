Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1872E20FA
	for <ddprobe@lists.linux.dev>; Sun, 26 Nov 2023 15:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OsrayJ7o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B29EC433C7
	for <ddprobe@lists.linux.dev>; Sun, 26 Nov 2023 15:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701012496;
	bh=mpIrrNYjyKEaPPKADnga5sN0l2VD6BopV/JOLwTPMXI=;
	h=To:Subject:From:Date:From;
	b=OsrayJ7oUz7Ovl6YadfnoEYvLKTHAsFBYgojfthts/LuFSNq1YGNVfl0cp66BQSdX
	 Qg9EV4tytLRX2VwjYYmCZ2WhdIjk5hx0Ke7JAbGG/xhnsu89MHYbtGYgx81SVsykca
	 ZmDokyHsLadSHcvGJ4TL6XC0t2qVFUGIkXCZnWNScqOk7xgHAiY/PzX8oTzVEtquni
	 mlx+OY+8xtrhDHvqH68ZQbLjiMREIyVxUWxuDNdeZeIjJa2dz/V1bDjmfVl6+gdQAS
	 zUfxNIJAVfGwan0u1XTVagDWjB7O4nAqloF0rprj/UZXYJyAzgO98Dkg3Abg28Arjq
	 VhkNbXNVOnpew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E424C4167B
	for <ddprobe@lists.linux.dev>; Sun, 26 Nov 2023 15:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170101249636.29758.2516731866456103107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9894051b4c734a789bac8d1163ec215b096ecfdb7c49952a60cd36de8690d064
Date: Sun, 26 Nov 2023 15:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701012496
