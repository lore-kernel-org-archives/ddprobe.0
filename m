Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B47EF7B
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 04:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C588C433C1
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 04:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664338853;
	bh=cziBYypsIlh4B/O3Zq1EAOlfmx6kvE01mJ/B1bmeeC8=;
	h=To:Subject:From:Date:From;
	b=RUbGUyBPzP08yamyHLG6iS4NYEFO0TAkxvq7CXinlcAUSNem1sqUn8sCvQR53qv8F
	 v2vgAJ3yo5dxLKs7xKkbe4Mm9vA6klkG7nkgB48H/aY5fz5pQ2dFaWmqL0R2xEKgCU
	 b94LpattlCHobUEVWPEUbyK3+GTuN4qpAn+cuYVnqIefnjkOO94wGWSHylTSbveJbA
	 xyJgbKqzr2cALOlXDTWG0fFEzTwTV2zDu3/loPmFp0/DtQoo9wECpJ61BHUIRNFkkI
	 Q5XGryXDpZQgdrN78L+Gp/pi2DWm2Ggb0GoNxp56yaGXp9+FciwLd1aVkgktieN0Px
	 bwpJsFdvt4zqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 505C9C32771
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 04:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166433885332.29933.8831211094135921486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5cd3b7edaf687e5a6a2cce42e3ec82b8fc0a52b6f7d19f71d5e353d4028f422
Date: Wed, 28 Sep 2022 04:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664338853
