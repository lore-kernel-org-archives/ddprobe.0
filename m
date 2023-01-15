Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E91087B
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 00:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88CEDC433EF
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 00:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673741487;
	bh=M6y7ulL1oZnpW0YRGs/5sE0wOJj0f/eAhbjfHI7ZPhA=;
	h=To:Subject:From:Date:From;
	b=Qd8GTV3+B3AtGsbXsc5Nq0mtOG5u0np7k6nyvDpD3l1Pu15LUAbqXu/BkuHDp0IxA
	 JK+cj8OYO61dFjukneaKQppUq6tko1EpKVf8uZ0y0l5n3Tklfo9t5Q5XowpqEJbm0v
	 OblVJoBECdoG5J09srVpU/ei9oM4ipdKt2ti0m5ssEmGOAVLVCoQHmcozzcy0ztXMS
	 369AyKJ2+y8jtvgoS9b0onPlFVvoVAXyzRbdnM9FauWatnYf2dsB2rZJZqlfXC0OYD
	 kIB/NGZvbUWk91u5/c7fGLsQ7bdRStm/MV25oipxufsc9+GWi8jlf8WT901Hub5HVl
	 iszLIpzTxF3LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6ACB6C3DA78
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 00:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167374148739.23150.15176177378377301535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89a345e9a77b92a0b904a8b21251fb5770d53ca05389cd6b444c9ba5487f9d45
Date: Sun, 15 Jan 2023 00:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673741487
