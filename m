Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 928BF7F
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 00:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6761C433C0
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 00:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687478588;
	bh=8S74J5DpmLIOHgXI9t+mb+xRb7KTqW2b7vcEa9lpIvA=;
	h=To:Subject:From:Date:From;
	b=acTEEfpKVs8NFXZvKarjO3CmUDAx0+DTOGN/YfbpwwZQtjcveiBuDEJnpjU/oCBFy
	 outys8bqkASrOoONfzqMXf4TlaMEijF9syRs3+PUJaMIzykgoaoTIDDgyQKqMhHm8U
	 Cyfm93PPLhG5XE89bWJmg08fjrn9tdy0mQpVFg+It90rB5y9OQ+/aBx+lydhFXS7Bs
	 J4YhS0JV8QCpcjB90ebCWnrJrR2EBH1FVp0pIaW8qkUS+kdWmRcIweodcxgqI4ApAY
	 LeP+l6S8NvG9yfIsW2WVO+OzHV8tGuGu416IK00sskF+PKowmKDcynjLJynvsaA5jE
	 anviMGQKie8aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C72C1EB64DA
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 00:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168747858880.29628.14841162620534105685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1226b2d60720c2ee890b179bb762304fb4c53feccf7c2c59a811e25f274ac2c7
Date: Fri, 23 Jun 2023 00:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687478588
