Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9E937E
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 10:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FFE6C433D2
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 10:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671358887;
	bh=0S370bIb2wbnft7bQKvNPXBbCwRyRoSNyzEsE0NYQNg=;
	h=To:Subject:From:Date:From;
	b=dbXmgoGalKUerJkIbmBkKYNVC4LZIJpDZblqQhmF4SzNPmPov5jH5TYonh+ryexaQ
	 RGLrDwRxLvadCBh/tIDo3qHbA5dVhERczCunnjZ66ACOfZbtTJzcAaDmdsYu4KkTjk
	 eAeyWAjy66WjDgCpUFtsjExdRLv6QjF7gw0yhQk1GV6Pqg4kjHeWf58L9k3+23sTi8
	 MzQ/LVERXSqw0FnxzeE+Q+gD4zUh/hsXxsbmsrzvhBLoI//PiFeKS+l8Ayojt+5G8S
	 A1WxvW8K7hsKSitAE8XbSz6AB+wPp97Vmqa4ttCcu5lSeVWASzoqB4TozUJrZZCChK
	 9K/Vj+jw2d3YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6317FC4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 10:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167135888739.19086.14115944717036647574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4967fb08308794b1d738257a32516c0744911c303764cd7f86a9cdc75ec6d270
Date: Sun, 18 Dec 2022 10:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671358887
