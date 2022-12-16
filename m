Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3F7F366
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 03:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8414DC433D2
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 03:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671159687;
	bh=Q9n+vB60gSkdufQIxqgv0Lj2PUM1ObxOj/LN2QOavDs=;
	h=To:Subject:From:Date:From;
	b=pxhslL+vpYYbF0Y3dZ976gAxXvZMG5LEZC3DuxmoPlMJ8eK+kInIedyUlE4SHAl4d
	 91fUxFBi54uGQohNnkSrZ+Ib05zxn8wpH9R3of5kLIKdcQ7q+OVCOAxsIMxF2KQ54L
	 kWXxxVwzShzNjC7+UhGHZAOdn1/hY8tx8F9JqCZRDPdoLy+Kx0kw0wtmKYSll+JytR
	 d+6iNZXDGmEkIs7k5R58T5NTvWRtdIC221OD16pL8YibWo9s6TR4m2Kpb2AXNhhnZc
	 22T9mwweW2418wSakfGI+WfDZc6l6YgAS3PtwOGDappqpXdjaUEVDhkVqBHQkkxJOX
	 VxTGpP9hWO4LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 666EBC4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 03:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167115968740.32655.6264872470847408975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a719e6908790e4e46dfcbcb33352384e6d67f18760353b432d44d06906432307
Date: Fri, 16 Dec 2022 03:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671159687
