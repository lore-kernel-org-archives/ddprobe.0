Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE6FD20EE
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 06:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78178C433D6
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 06:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668751254;
	bh=T+hjOAJ4GJNHPbuS6RclIWING0WlV+ik9mA3oALY9Ew=;
	h=To:Subject:From:Date:From;
	b=e+F5Bs7Z+qMcV7aQQLPSsCjGFqnyK+FAo8PiYKF/J1vSnb/CwWRFsqdiZ9sSWQgSq
	 JwOma7Nljk695rOhf751XA+YCCYQx+qC526WQNI/PWbJkSRGV0eaAohEJiwaV6zF0y
	 hJ7P4gNSJR0rMv4sa21WlFIA3WOOnehEe4iJyZCzPD/RyLO/QTo/duIOO+Js+9Ccqj
	 hwt+RvUVrmMGaFqh2yNvwVz5RHNGcuOdA4FpdHDfz3+qMste08Py9GF5dEHhhHli89
	 /k+6cTL8lIYLkWiGNJFnl+EB2qxB06wTxKq78Gxr1g4aV8yme8+mjShlizNmaoJLi7
	 XSMLduZf5/r/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E33EC4332F
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 06:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166875125437.26330.6949768830548597445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96685a0c74e96108aa48d6756e332993c47dd13011cfbad7449eee2c23b82a1f
Date: Fri, 18 Nov 2022 06:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668751254
