Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F814D50B
	for <ddprobe@lists.linux.dev>; Thu,  9 Mar 2023 15:41:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E132BC433EF
	for <ddprobe@lists.linux.dev>; Thu,  9 Mar 2023 15:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678376465;
	bh=vjVeFRk1fy5mvC/P1ySwSC86ImHBaj5mtSmbNT+Y3Gw=;
	h=To:Subject:From:Date:From;
	b=JLutBcGlMygMq2Wy0e0gKyduyFTXELWPWdyAU2SuUopDT8WoNswtP7x2LsXyhE9Vx
	 RKXQ/OLZJA6OLhZmjJjhuId2AaDJxpfFj40a/JI2ZJ8SPZ9vP58nIbm/hkV/SJsN3j
	 +tMi0UefyqVYcoSMrgtFZSr5ivF3ZvjFzzuVYhqcY+Qi4SPUgiKpdCZsvy1HzEYbku
	 +mrrwG7DL3WCnQfaMnQcX96SgBjUw+UfyzZBxDxlzv2/vqSW9Gz7pcDQ2tLOUBxJcY
	 wPIbn0InYU8dT1TdgjMZOEyqxibFuotAELIHWhvXxCL/XzBAxtLLNup8tn1cbcYWmm
	 Z+uGXvHVMTY8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3397C61DA4
	for <ddprobe@lists.linux.dev>; Thu,  9 Mar 2023 15:41:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167837646578.4379.9581515376753666732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b62ec90f866fde9e021563ce943422ad24f28ac5ed9e641e069d46a92e6ab557
Date: Thu, 09 Mar 2023 15:41:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678376465
