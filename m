Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86C20A937
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 23:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2200FC433EF
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 23:22:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682637726;
	bh=lxC2WsCPbTITLA30scuu9vzVkbnO2CKGt2qF+JAKIdE=;
	h=To:Subject:From:Date:From;
	b=A+81ubpB5fHfZEISjWRv/MDpIDl0GbhfIA5pGee1eorYjpmeeuZrA0uG/JztSGMfg
	 Q4WSUiEq9AGXsAFiWxr/fvDEqpj6cPosSyeMuOu+jVaALdGwpPz8nI1NVdcuPZYIHZ
	 lj6hGWlPaJXGJK/G8W5zUcJ6bxSij/kTSSAYPMHJpOvnw/qA36o9XxChJ05WZT7r5n
	 H+mbte3PUyqqEVQQDU0C2KyoVh86rIXAQEy7yMb+9sWrGe9hmcXQfrZ2oUdURqAOOX
	 +eaMNv5LkGssoA0Tiuds2DI6icL7kloGhLsycJLR4b5e5Vj0hd2K6jaoXLkKGsLgjC
	 K8mNN5yXEGJgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 068E3C77B73
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 23:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168263772597.7464.10136116906152535603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61297d44e4d115844e7fbb8f487ea496ce93ae0785874df28f1e49b6b94be76d
Date: Thu, 27 Apr 2023 23:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682637725
