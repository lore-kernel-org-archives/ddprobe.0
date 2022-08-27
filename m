Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA69D28F0
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 10:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 751E0C433D6
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 10:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661595652;
	bh=rod5+MCe7xU/R3JgtpqXpmrBzfVrXhuoNiw0+eIGAh0=;
	h=To:Subject:From:Date:From;
	b=iD4lN+ThhCkVwr+YcncvXz0obHFmngfzVmplanLaKGJ4jWeAYMprValizHzSUsFFV
	 U9qGBltv5X0mNHcmh8Rl/G95kYHewIdP6+UBX3A4/274UJjiS31NkM1Ry5lL7zGQ5r
	 yyTD/+awJHFKymitjwMFeKnfonMF+ZcbxRb7oBHCFoc4xocyUQQAKhyIiYjy8hLayt
	 dpv6pcbdNH66qHivLjQPvFtbBa4WjOPJuqylYCClC8nVWFl5nyVQc4jZX20sSfG7e/
	 unzXRP6Xp8yVAUx9Oo2vtTjuI8AicCSDTw+RIk5vT0Gn06Qcu71Fp4nGyTvBqpze7M
	 ArgHsi2ZhDPHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BA4BECAAD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 10:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166159565235.29682.2966861485734576052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 995c66ed1ce262aaa8654ef413ecec6364e0943c434a6a1119a1d015989c9a63
Date: Sat, 27 Aug 2022 10:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661595652
