Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF9101FDB
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 12:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8413BC433D2
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 12:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671540087;
	bh=4vEAWrlLFvdwFEEKhkUzj37nnLoIdhvmtAsl9aGbPVM=;
	h=To:Subject:From:Date:From;
	b=aJZ0zDbiWLvuvLMRL0E9oe0fUuaFbo3YXc1RNyVwDT+iixCIEXi2R62xzYkUHxjpF
	 3aNS+ozd7bT/JlIvJtJwVIms3KqvyqsFbLXKsfxH/qbZsFvUUu146C3WPMESvLwLEB
	 LMPfWIIRsYoWMePvTViUN+IKPZGw0YFfNBC+7kx4Aw1+H+uHcmTuW2DrOkroEzNDVT
	 4RDtYlaCg3Q5/TcO4tIw4ixlZ30b2G0RZeYNddpjH3yys6sDODGqm+biGkqoRUvh5J
	 ENtZloOjUrdgNBOB8wEzOmF3ug0d/awPPHMJLZFXhVWki7JoMjeHiczKDgQHD3yI/W
	 O//HurYEXKLhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E57FC4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 12:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167154008744.27469.10646138789968512405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f893dfc00847bee9a2108ae67ddea559dbff13d5789b6015b09abec41f20b42c
Date: Tue, 20 Dec 2022 12:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671540087
