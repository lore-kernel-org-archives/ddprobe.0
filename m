Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 595FC27F00
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 17:42:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1F19C433C7
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 17:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689961328;
	bh=vqQE+QnfMbvwbsRsf+uKncFMYKx6CH+YhkR5tMgCsgs=;
	h=To:Subject:From:Date:From;
	b=FkeNqoBBenMsKqNGfmOfqDNG20PMRkbuyMiS/145cGBA/wk648O8WKjtlNHEYpU1y
	 zjYd73JwGA8O4meSZNgY2aHaH3BiJSWjSK1ileR62LaapuJGCghYsk2P7eDAkd7Qoi
	 JxnPBF5LtGlP1uQHbfgl+HPXcPee9TeBjzLLusYLZZc5HUQTpLn+fD20NEaqou7jMx
	 wP36LPSyVR6VHvzrCEQ5GXUEeS31Hfo++cYnF4rGQABAteD6oF/k3maDRf9WUIHYI4
	 zTnl35v2fOGLTYabyRknwxvmHbNu5D6RrtsjLyrq3AsNvOu5e9T/UY2vf09UF+tu4y
	 4sHyvYJ4Wy07w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6699EB64DD
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 17:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168996132873.31132.15239931506821289137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32c42d9e241c6afeb378930497f4b2027d34a508e96f81c74c2d7bc77d414fbc
Date: Fri, 21 Jul 2023 17:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689961328
