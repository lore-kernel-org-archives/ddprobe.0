Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC5E41107
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 04:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B7D7C433D2
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 04:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670731887;
	bh=d/X2in75cybeBreDn4JUZOcWSs+0/vG1TgPqHYyUSSA=;
	h=To:Subject:From:Date:From;
	b=r0aDYe6fGHQ3qr6xBqx5BQMmHJaLjomTRXkzpE83Ftq42N5Vr68UDldab2o3KvDrb
	 6ofjd5Mf5SNVr4ZzOfB+igAYXSDEJ3k7Goi61qn4zQDCi7d3jup/UhSuzGssITydsA
	 73bzOa1iqxwjcL/fvMj1rFpbfQiyMFIakQkHEM6a9BavVGHTZ9lRU14fVdjrERhjaa
	 WQV2HTbngI1rlgbt3fjkMY4dX8Bi1IEChHK9n38Tq+480x0axdL4oqV6iIDYNDfdLJ
	 Wqsx9EaP0OU5wB9Te1mlESWhv9YoHhTJ2kyTmGvqx+VJQqrO4Qq9uRq0eynaU1OoMY
	 oNGfCBEBIz+zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F010C4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 04:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167073188740.25564.8023592478240971800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72cbd0a6da65ba4cf5d9442b0facc063af08c8188ac5ab7a18d2b72827f248f6
Date: Sun, 11 Dec 2022 04:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670731887
