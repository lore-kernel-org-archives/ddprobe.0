Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 581AF168A4
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 16:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC153C433C8
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 16:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688142188;
	bh=3Wa1EQXc79kcWzeL5SgdPY2MtWeZd63+TVP0Wy2fNFY=;
	h=To:Subject:From:Date:From;
	b=K3Leu+UyHi9DXbScoB2ilb3DjFbDn/QVEXALDuaFQkJ24t0RJhv9N84fXm8wx+Ci0
	 lK5KRowYoNPCuKJPMtm5pp3cRMaPzJfHE7CaSTNgynKdF1UaaI9mEtT3mNItXYrGaC
	 tL83grc+2bAuIf64EZApOH3QLvYecR+aUKRHmCfD1rR4a+U011APmPbHgI5RkNItNs
	 kgJpH16OPTVT/afwc3H04agPvwB63iDRAeV/HRznD0+m4IhfnQshNKaDtNjcbl4d2u
	 jftks19ad9ke9LfICA5yIkpWGLlYotiU6mGYiSEpSdK7326z/PtWmqSvpYk+ydagUC
	 NhE2q6KPTGB8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF352EB64DA
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 16:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168814218869.16228.1958411882044993086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 418495055e9ec80aa91f376969ec8b97048edf7f373970f6cd7e55706f885b3b
Date: Fri, 30 Jun 2023 16:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688142188
