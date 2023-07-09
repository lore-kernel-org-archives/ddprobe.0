Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AEBA7F
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 22:07:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEE31C433C8
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 22:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688940428;
	bh=L3PzZfLhVS9NIak6ymVtqG5SjoSJZx3LlbWNAPhNtug=;
	h=To:Subject:From:Date:From;
	b=OsWFe1tVzHlFVYVBjAgBSaZSsYANUx6tXjtTNwzAYAX5JxW5/n/YK3fL8wH3uzXys
	 gVnSRCAjOEfq7LkDofamzhRaYvQfqXYhovr3FqbAfQ9i7vjS2yBWMApzxS4J0Xc8Hu
	 sTMcXNhqoof2sKDXf8nxECU9Coa88JhUDsv84eg9zWyyn40zqsNmfNrOwKavxUHlTj
	 MiJOBB2B+MyrFWZslhpiLSr7Ch22gIybTpYj+OyQNygb1YF7Ak8BsVXFGLcDdG7V6h
	 nQ7B9uSgac2r/WuBdXJN6WtHRvjCJbeAqzdaOGlM53X7nyVVTzrtrhivO/f8ao7YcI
	 qiT89qFJmykSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B53D9EB64DC
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 22:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168894042868.10777.6960522290670000129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62116a8c4184e278ef16baa6b8b4726ab043b2458fcaae4579ed56604d91453d
Date: Sun, 09 Jul 2023 22:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688940428
