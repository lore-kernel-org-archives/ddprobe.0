Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6FD32F36
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 22:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7611AC433EF
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 22:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670539887;
	bh=IaWAk38QNWjvI5uB0c2owXjUqNWGwzPWl0tYz9nGuzw=;
	h=To:Subject:From:Date:From;
	b=dWtQJEAsvqt9aqreICMtE1v+2Z6Tp2W5EfBHpZY83tUnXaNYs6dpVa4LBjEiGEhyC
	 H2x3fynTq3VYtdElAeKmKNAhZMQU8bnJ7GLOiEFYvjvKO94fzsg1s0VHg/+OGHTNTM
	 +LNGPDBzwO07zxRL37mtGbT/GBzj8QSvbYRuw9JWMuneNUxWGMv4TjyVl0Sjrlc4fL
	 8G9A6coRbKJqW2mPJBlHdB6LyGVdIvLbfRvVMMNyc+lZLZ9jMmysRTnyn5clwfKG3j
	 s8ZX7HdTdPF+MoSMYWkBkiqdOl01U9iz5wgFDV4aUSwppiBCb7HGJIpe1ZmaRxjUve
	 LEj9ROrGuI4Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F44FC4332F
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 22:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167053988738.8606.2774696040854858480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75b69ccb820969c9d432f08889a8c8eb33a339ab24e4cc0542e3a79d9f126a15
Date: Thu, 08 Dec 2022 22:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670539887
