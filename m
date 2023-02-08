Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 662B73C3D
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 19:00:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2040CC433D2
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 19:00:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675882806;
	bh=mq4eOQGD9D2dIfDS8ShWdPa+LFZJ875S7S+OhbCuVzw=;
	h=To:Subject:From:Date:From;
	b=cBU47X9jgLoleq9aF8Hq0mnyiFxXMvvaHBJ1jST2eGn1BVsfbEW1GIP1dObTFYzVM
	 oYqxSzIAmwK3f5vHmK0Bz703HGYUC++A6mlYSPFVPtwOq7Elsy7haiOwmswOvOLGgo
	 umKpvggSvxbApe9vik7LyvNTplw92eXxGD6S9qZwgLlsMoKS1kvEWeqlg4qob+e9CD
	 QcRtRcI84mkzchXWR0B44Cnd69czMaVqvzAFI4z5Mo6DItMv8jls6qv3EDxQ5fibsf
	 BjbzSH/N2ph2mxFLBMnoUm/u9odExSs83+fjm5C0ayAkqZ7apI+XgMWcpikor/hQcH
	 oGwRHeTmsaoJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 05F2AC05027
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 19:00:06 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167588280600.20354.11102087759894708069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51ccf1f372adae062942a0b3f80f771e055482c4ea09dd4dc8b091cb0f1aeb41
Date: Wed, 08 Feb 2023 19:00:06 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675882806
