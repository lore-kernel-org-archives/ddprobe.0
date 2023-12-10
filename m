Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3D5FC12A
	for <ddprobe@lists.linux.dev>; Sun, 10 Dec 2023 13:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K3IB2Oye"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82E0EC433C7
	for <ddprobe@lists.linux.dev>; Sun, 10 Dec 2023 13:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702215496;
	bh=2A6Sb6fdZnKSL9DGLfXBXMYDHH/g+f8ph4ZBVHhBCfY=;
	h=To:Subject:From:Date:From;
	b=K3IB2OyeD5sLSda2AQcN+7siuryUoK86ZJ7QhdmWpTXe5oM12WQ2pLyDxYE4jSMtU
	 /WqFZUDSTGehngeH6ZC8LQAEEhdwhaSzuEKi7d+6omW43d/MLCKZzP5egoUO/F2PUZ
	 NUFxewj1Z9aGB5uw5LGWZ8Pqp1Ew+C0mUcMe9Ptkf3WORauTOW2/iC3B44eRn8xZt/
	 PT0OvovAdXraPK3F0+8hWD914FBWuX4GbuKX1wB9KmwtJuEJZjHVd5siwSy1Ac+GeW
	 9Tk1JLZAjhu3k9aqAqZ6oELmWoeIqwPJ0hETzkCDqNY1iPsp8Z8OJ/3Ug6aPRKKmiz
	 tOdV6TVYhWitA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65E7EC4167B
	for <ddprobe@lists.linux.dev>; Sun, 10 Dec 2023 13:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170221549639.5084.6118660143862000505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c2d2e646e2998842b984a9c943daf9234884da800e6875dab2104cd4ee1f171
Date: Sun, 10 Dec 2023 13:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702215496
