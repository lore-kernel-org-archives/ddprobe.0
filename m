Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AAD4378
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 03:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF6D3C433D2
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 03:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673493087;
	bh=CEGF4BaZ8NP7/kDlicmdjszsdy6hy9Bxm1jmniNPBjk=;
	h=To:Subject:From:Date:From;
	b=gOywijKKKm+XXOvZmQ4GGA+l34Hwh2n9AjHNJdvFkHY6D9otJGnOImPVZedt292pg
	 5tLpmxPjVfwBLwEEhhlbtVI1anf2jjv8IqjnhcRqY/CZI/zoUOKbEFg5Gn4+FBoO2q
	 Wbs50f0+MpCKJhSu4X81Fi6iXHv6wyyu862UZ6WOh779peHAmyXOPnhA79PySQZXh1
	 87lk6sgT8IqxqQ6zs6YuLauhk65n88/JiI4j+7jgcAr0K0E2yVUUK25KQksmys5MBW
	 9aoBZesCd5uMqNzju29Un4AOQ495gFyrz0rcxq54mL0hbrTRxQjX37ddUNEVNu3OgB
	 wWs116ot9fwVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8892AC5479D
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 03:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167349308751.29926.17229436201344709797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22e0af81fb59d62e0231dd7ed70f974462ca6616f58b920b1842eb806db07143
Date: Thu, 12 Jan 2023 03:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673493087
