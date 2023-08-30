Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C72F1106
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 03:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC021C433C7
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 03:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693365848;
	bh=DH0Bo0Bje1lGjtZZfVHOXSnrYZF2fQ5yD4Hd297tKRk=;
	h=To:Subject:From:Date:From;
	b=KqC0S2120C+wAVIG95oVoB4sa5DsGWAEuoamxRrldZjsOhctlU9X9yDepYCraNWJs
	 WYwVVZrXHsVH4M17TRvmux+cHBFaske1dJchXqMQgJShMa/UwfPA+HlaZMEPymcwnL
	 refUN/d+32bRcQAu943fgW2C174aHmO3hEdn047nPP7txYu0XPHXwuQmFYI69YyFPe
	 07j9E/gQtRPkoXHJoRdMcjdjYLHwVHIkz+llbQIXyVZlTfc7XOCrul56kFdG+pjmkf
	 o6mwMoCIh6EBTbBpaoYWHIf2aPYmPqAZMEclPok7aKCmgaufIS9cuUaBwiLduXA9ge
	 Ez7Hei8ABwvEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC063C83F10
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 03:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169336584869.22169.3853443195190453570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fe9fb2c3c7490167a15c1842f6b0e5c3db16f1314c0409844b90f99cf562f19
Date: Wed, 30 Aug 2023 03:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693365848
