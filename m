Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2407D17CE
	for <ddprobe@lists.linux.dev>; Mon, 10 Apr 2023 12:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5097C433D2
	for <ddprobe@lists.linux.dev>; Mon, 10 Apr 2023 12:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681129925;
	bh=LaX2I+HjGaoDKklfaqGrc+D9QkYAqR/b7R280N74OFY=;
	h=To:Subject:From:Date:From;
	b=EZ/SPxvFEaXmRL8dks1MZ0ReqRnZdXOb6334s/BABeYzEr+6uLupRZLAEJwLYtEqo
	 b4mrsZ/EeJ6Up0wcKSh70mZZ4r8x+X/D1ON4/Uel6W4fpMiDTJvXIk8F01Z5vg/CcM
	 c3eCcdlIpJT/vV4pNWsxNt7DDLT0C1WxLUHWhSpAndVbxloF1VrxFqqAO7wVvq7P67
	 XjGLJ8xCog2gCHkDOvNnVxJ30UkVSN11zp6R3Xp34PR25a/I/sWDVIPIiOevX1y4He
	 vDa18Gk2mtT7OLtNIMg8akxeW6YLXjXOUQCnbToRFk6k3aV3sr/WYKlf/7spMoUCnR
	 YTubGEIW6HxbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7F75C77B61
	for <ddprobe@lists.linux.dev>; Mon, 10 Apr 2023 12:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168112992574.15876.10944766635920557448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3645393b842a19a4da4820d360b070585b7ece434d6ef1f05641505f94262b0
Date: Mon, 10 Apr 2023 12:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681129925
