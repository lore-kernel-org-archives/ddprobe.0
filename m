Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71AD85C9A
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 07:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7038C433C0
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 07:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687936988;
	bh=HA/ye8g1BU6QKd6Xnet2nxfN1WE2O2BzKegZekIqFK8=;
	h=To:Subject:From:Date:From;
	b=IgXFPM6qHTjDSjsgnsRnpQ22ZFCCngHOZrICIVOU/boaGXCkOKRtfZC4lNS86JM+i
	 XZTAuhun6dCvLP4mxxXN0z5vnd1tuaxMi9US6FZZY0wfWJ/4dkHzU37B1gruL2yyV/
	 Ik27KkCV1TevwPXfUbW+IH6avbyRAYqVq/na3OwoI/3XExA6Hb1XM58CckPZCChPRS
	 tewZWkFfQbZFKRzobrVXZHbEof+Klbd13Iyl93VdxtjgZ3TQ4g2KRc2mKfBlaqk9Ha
	 tbEqyeTHXUytYjY1j3bIm2ek6Q0w+NLnkUFYkqMbzFle5dNZQ536b/nTFvfyD3QxcW
	 oXpxYnPtRQCfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD9A6EB64D7
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 07:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168793698868.26263.16300216732889127966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 576ec97a2e8716ffb3f1ed3c4e3a04c247f8164e818a1f2314223240276f1300
Date: Wed, 28 Jun 2023 07:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687936988
