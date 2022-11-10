Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6BDC626
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 08:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86FC1C433D6
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 08:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668068454;
	bh=fzbHcWnn0rdYE2oZwFlm+MKi8ZZ3wzRySxx6Bkc9MnM=;
	h=To:Subject:From:Date:From;
	b=UKnYMzZVHdy6T6RE1M94+ysUPtvQ5K2iP/F6nO48DJSFN6d2AM2Bi/nJLo/i914kF
	 Dy89PPPqax3QL6SjEMyhRTQCarU9PJ23MuEKiWJ64Ni8hN1t43Eme0D7J1of3q2y57
	 D2tFZzmpdeBv141eMS5x+1/d8PDNib+bWv4FbZCdTmf/6hCk+NB9DK9f/BLzfVxHKT
	 x+N8p7HLwobuU1ZqCZZUWkZ6huDN2OLAjWm6UWcc4zvq+5XoJej04Nj22BrWDwD98e
	 vUID53gPAjqcqqBRQdFOABEKLmJOOaQUIbGERL4tMjzsm10/CNIhNX6uUYNWH/X2ax
	 ZZgY47JYrQ9xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6456FC4332F
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 08:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166806845439.31564.7841848364132632564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 563d20a38ac170f60fe9f6ddda31dfbf838136a968a3bfa6497544b20b159623
Date: Thu, 10 Nov 2022 08:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668068454
