Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C20221C17
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 03:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EAB0C433D6
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 03:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666926654;
	bh=tn8ukhOFR/y5TF/H/wP5/2DWFFSp+PWN14WXTOudxTg=;
	h=To:Subject:From:Date:From;
	b=RkqINez+gDZIAPpPjgnWZ5wtUVuph82Ahfw9mypegqI8KakPsu/0UPJvYeL+PxJLS
	 zQM13OWRVI0WveLzUkfpwfLhuVeSbQ9CfJBYRaecGVE15CWyn3OSZH6nB4C/u5Nymf
	 2cMMe2E6wST9GO66/VMPSfoBhphlwTxrdYw6O1vFWHDfm6c77/xgwubDIFSiogQKmy
	 GAsa+7X6baA0G6mwaR1zJQuU1QoOUuVPtwRvzxadIGZXFlaQyWk/3cKqOjtdRmRAh7
	 HUVLHAC9H2VyjVG40EbUWfpYKSgSFTXzpuXYrh+urYwxTpt+fVkxUhclQUYyUnRevu
	 oMiNnr8N9qIWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 535AAFA373D
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 03:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166692665433.30457.3898711124857818783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9ba10da863a4bcf786b70b06846b025f2bc61607e0f2b743f2b51884a56891f
Date: Fri, 28 Oct 2022 03:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666926654
