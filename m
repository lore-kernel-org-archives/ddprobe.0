Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50C833C00
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 08:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7F90C4339B
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 08:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686643565;
	bh=TJbz59ESPwfnP8r0EvLgAwUwykVrJ5XeO95rcPC4ZcU=;
	h=To:Subject:From:Date:From;
	b=hqlkexOX+2Lu/fcm/h8/9oyGV0wdArGfIJPuU8gf2tlEbR1knCFSfysovTTzyV/Bf
	 mdrP3QZeKt7PF6HxP+3vbyhhOCqepCFZvHcscZKZ3P8pZFZj3iYPiJc5bAoVZOG7FB
	 b/O7zMHo4+HQo3ddPZa/oxwLpX5d/JG4wkqdtd2GyXtAgUF8whuNx1f8kUGhAQT+Gq
	 9AfoFN7ZuOhdahJ9759JHmj6YHRn09KZoztcSaHnjKhDwlUy63KhXdZh1tVHSi07g+
	 +QoYbH6q7Y+fblTVKd+wD3OXn+9J7cYOU5iar0y68ASR6KnploTBX+pxpwnacwVCrj
	 Iie/bTP+iKtog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE665C77B7A
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 08:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168664356577.3827.17561801858681535267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50c13bca39a5b4e15c161b936b030623b53b1586fc9669292830e844882aeaf9
Date: Tue, 13 Jun 2023 08:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686643565
