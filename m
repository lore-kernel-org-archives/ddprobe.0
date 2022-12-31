Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 007A115B6
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 05:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9414BC433EF
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 05:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672465287;
	bh=LwOBTiHfGtKxOf1GYZytHOujRaYra2Dl3aW9dsdL2Mc=;
	h=To:Subject:From:Date:From;
	b=HIhmU59KKnn3+wm7XgZZoPU5v9snJNqShC0l4zMQWw21xb7vQ0mAm7A05qmHCrbwn
	 oUuMDV6j3tuItpBDPszdF2bT9Wqxd7/aBIzGm6nxRY3KDohgp/6BKoRTe3xue3VhbS
	 1ZjgKpdyd3fY3t7Qo7OmXgtBbDpO4OdHluDb8NVV8gaAFP/XUDKM2EsjcKs3zs3QBK
	 Xa0YCoXX3ibH2F2gwiWqckv78e7fMtXllNN4t1NQh2/JaQBh/UDWKMspXq1VVZKh5X
	 b0ATzD5DNqQoy1uHOVu9oBtCjvBS9+G4VPH0+ofXKF4Rf1boBVk8u/bY+ULpZQJnbf
	 QQkck3kZsHyzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7502AC4332F
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 05:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167246528743.4775.8889143693284062889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32ccd148a87d340e3fcd81e0eefa9a891ee4794a8377ee141ee10065d7a5e77e
Date: Sat, 31 Dec 2022 05:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672465287
