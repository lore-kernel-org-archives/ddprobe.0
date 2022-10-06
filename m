Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3F75632
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 03:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FF12C433C1
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 03:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665025853;
	bh=MUAMlMQapK9sGaB16oG0D7Z4MLm3XPEsGptJRFcwOkU=;
	h=To:Subject:From:Date:From;
	b=mgtGetPIwyvr0u1kGGO3LtYV3p5XERJRNF/zAmWewEy81MxqGtTzLN7OL2Ee3Q37j
	 bi+ffgqleRBv7gl8IIMCMIpBm0SxmGv+MbSNXk2DSguE+FTHXG/Cncc455npC3qlM/
	 t8FcXIiYy99AEgPfUlcL/nTHScWjAo1lw/3TmWse3sB0dDSZRT3rHDGtKd65JGucj0
	 NXm7Iow8f/GZocjWeI3MShOfvjw7g/w9LVf3LHMnqblLV+cFflSoLqI9yZvqp4M+dP
	 oSktc26Qn3WW9O6M66TiDos7CVZv4EnYLRz9khAet/6rEFPAv5aP6ZgJuEQlal8Btw
	 1J6v6bt2+SsGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53C9CC433F5
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 03:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166502585333.22624.17654079548313151566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f3b2a5ed859c8c4bde3079a0a750cd6381b9a5ddfea3a436294b227b5b3e52a
Date: Thu, 06 Oct 2022 03:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665025853
