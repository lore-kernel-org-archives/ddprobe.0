Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4138BA4B
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 18:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 757B5C433D6
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 18:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668537654;
	bh=FjZrfOOCHwofm0yqTP6pFM19krvj/GywgWt/JpldO7Q=;
	h=To:Subject:From:Date:From;
	b=bG3ITdd1WFB37jQreWVNAqVQZ5vFajOKINcuAvOVam96SYVRucC/mAAeXziqyWuvV
	 aPOZkfuiMX2AeCZmphF2FXVgg+SbYUmJGpybVwdofR7a7niouG5iemp/ZTyJjB0+6J
	 FQj+ngfuu3WyrfK64pYFJ5pGHtseswsYSeupm6gvMKoYAifs2S8tqr+zLb4B5zjLdc
	 i2wVKpADy2wSZMgf2c6Ra/q+7BxCPT3MYeDH0P9Kr75rdJCpXJLmj9FBFxALsaMGHx
	 xWeD5aMq0K2AtcsR+ElJ3bfhDEOXVO1CunvXm89GlIXJIQ9QkP0MK7empHOfMP8FpP
	 bWtGA+qCDVnSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5356FC4332F
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 18:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166853765433.14161.15103001731918332843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6b1c20ff54194889a2c9922d29cb6659abf92a00b258c4b1f66ece100a5b60e
Date: Tue, 15 Nov 2022 18:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668537654
