Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF80AAD5C
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 18:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 97747C433F0
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 18:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672856487;
	bh=eozYQWjK+RtbWW9UNPgh6+/pAk5YewgbUIewMW1xpuI=;
	h=To:Subject:From:Date:From;
	b=dkMDSyMz4X6HbcsazcI5Bg6K3IVp6h5qrHeOlaaFyEfNTlNyWll+RUAJ9YNt5DZhW
	 FrrlxuNLbHE21T6DV+VOPMVwAo/uSwvu4Kng2Fg/2KXwG0AIm6W0RWatPlkrHws4vp
	 p8QMFnGMFgFkWeKUkh7Z/u5A5IS9atPggRQucphJWi1BG9IfT5aRR0yiLC29jFdWyY
	 km0lrsd4R+ikqSnzchbHYPQh3bwnSbV0Yr5t5RFYUFnKFNqdy5dpH+bl0UbU6bjcTG
	 4R0WPyCN5H4x0QRPuXa6cfqwVeALm9aU0GBmcb6eA5bihJeE0QXtiTXNGCZLZC+HIq
	 zvwg7aY2vzEQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75935C46467
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 18:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167285648747.16059.10480180428963365156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 757e5a55eccde817777188c44e23b46f194ac84bca29089acb6f89a3919cd7a4
Date: Wed, 04 Jan 2023 18:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672856487
