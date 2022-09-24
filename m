Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD27A7B
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 01:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BB24C433D6
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 01:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663984253;
	bh=qq8ORnXOY8J2ea3q8n+S02YQPGJA+3injM2UwcNu0D8=;
	h=To:Subject:From:Date:From;
	b=MztvRpaLhGB1vH4EbhnERmb6dMfUKzsokheH/+t748I1nPp3ESOo4/y5XVrt86FDL
	 2CCCTTY5fnj5j6B6u0r6B5QW7o859XsgZGqCuujjxzJxDnBBfQrWWi+DDbGuOVRWQA
	 6QG9lJao5bKf3ED6UZR7HsedLY/G1yK9tewPo9UhD3IkpIo/Q3ig6DGMPVHzKAZF5b
	 goURy75aZ9EeufqhzhtTWjoD3buWm3PP07u2dOviKu1270u5vqx3N0osd4x4GnsiHw
	 uglpTR9ql/eTQQoGDmbdsDRS6J+O/6r5YzPro/rzaNaVOBdi0qoS+P/vNNZ0BsYFWg
	 WR2+2QKVv4Ssw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EA4AC04A95
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 01:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166398425331.20964.6352751705439279135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f621ebc2ca9fa2bc77c74c994259cd32b240cbb85cc1bab3980a981a447c4cf
Date: Sat, 24 Sep 2022 01:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663984253
