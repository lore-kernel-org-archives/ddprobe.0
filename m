Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AD5F1855
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 08:47:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF226C433C7
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 08:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688806028;
	bh=1fxqh0NXTe3Wc8U+iZRZK1+81Q6DSTv27Zo2ORY8M0k=;
	h=To:Subject:From:Date:From;
	b=JjSvhK/k9w+Ytr8RykpBoo1PSv01Og8p6yrpMtEdAQJmdlQw23fMI3uf3iepy0qw/
	 m+7wLYGYJHN279EEfkujSdjCekqnNk0yNdzCr7rbb0Ff1Olhj16t9I9vIqtWVT+LhC
	 w7Lt/qh65AxTGgYzl2Nvg9xObB7YZBalGofEzsPFe7lbS2m8AWT1xopjYs0yYcWG2M
	 iWNS5RkfODQSiwXrFWfe6DD3KPqrXUlDkt7nRpgJXGUVjfTTn6S4hM18sN/1kGc73L
	 GEy2c9PF4fnQOUDfmY2a3451wwwyXEpi7zqxddngjLrLSZWbYNShR2ApaYQNZJzjiS
	 pKD8LOUxpMCug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A69EDEB64DA
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 08:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168880602867.8398.5418813217163583579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4a0ac41cf81846273db737820e62bac37083d22fd94172d122f98fea3ad3895
Date: Sat, 08 Jul 2023 08:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688806028
