Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFC08366
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 03:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75B24C433C1
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 03:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663386053;
	bh=PBmVxvZ66cGj679WLbMABuqYD0I2DSuMhJrJ028NwyY=;
	h=To:Subject:From:Date:From;
	b=SDV/pJvY8d5eS1KRYhOSZGTiSHXsQHVEYsrggnpaYtxZi5W6d/Iv0epKgJaS0aoec
	 u4wqTlcpSyiurSnKykznoIO9BP9r3AOZPpCOff3ssOSPBx03I/R/cu9Fj9EWx/usGK
	 T9kyeXAeayTWsVT/FYyys5VVMywcN5kg2dgJ8GYE9TrhZ7dtTeNLf7jXmfBFTUyfEI
	 03KLMuE0yvdSpqI+3eF8JVN5hIdkfB6Om7HZk4uL+VEMpCgUNmLu/LaFp75kUENLAm
	 3RYSURjSIe19X2EGGtWQoVSjvU4kCAtbpeqfpmxMH7MG4bPNg24/RYr3d/LJoupzuq
	 UweH0WdqhjNuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B0E5C6FA82
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 03:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166338605336.31368.16772303840968898662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6475076abf4732c47a99675a37bcb30a308047be04cf2c67867f8161732a1313
Date: Sat, 17 Sep 2022 03:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663386053
