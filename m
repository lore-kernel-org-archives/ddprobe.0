Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D56F31368
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 10:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C1AEC433C1
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 10:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664964053;
	bh=ogWDgKl4VH/3ouNy8rIf5JW3tFeoptSMZfP81zcCPVc=;
	h=To:Subject:From:Date:From;
	b=hJ9w9I1Qkr1413jOcJZae8lOvAwzSBRWKOLI01dkYsNb9fD/GIKRQI4MZPzwvJLJV
	 26ihYiMvBCQeWMOssqd7uCQNxwlsxDiaGZZuCJwmILxIzjLbgFmvAj3k220kp4U1gv
	 0NXDt/PKJPQEh8DT6Bz45eksL7qMuSvn+INJizqK1C4WjODwkzGKq1y6Tj3DdsdVtn
	 /twplcta3TggRkkgFe+ElZyzSdpdAMK0ImUh6x5FfR0FZk63zopKXAF+QIEcFEbSF2
	 VtbppHdlAV8kxX67Tm3SFY0BkPoZFSVWBI0LSGmejMUybXO3DbZr2YfX22HtzcHpi/
	 LzWBVcHIroI2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54B79C433FE
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 10:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166496405333.24169.14391198230346976337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdc945c24585f03c096528aef88d1c2f28b998fc94939760153ab673e22ea68e
Date: Wed, 05 Oct 2022 10:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664964053
