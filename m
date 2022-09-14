Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC8484423
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 19:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CA06C433D6
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 19:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663183253;
	bh=tMlsgOMYhCmIbYVL/Fr1fEOODIOYxDc/385uxJC+27s=;
	h=To:Subject:From:Date:From;
	b=gw+aJ5T3fboTfPgZTxNOy29dPQduQVm+efft31ZQw/iQOIAabcvptJezXPfFRSavo
	 U3KGf1iuH3NNA62rF0eV33EkJmA5wpNCtAdArQgLOeryRm40vJVKzWctX4pFTlOqeh
	 PRGhPzTC6UlNzyETG+sghZpc/l9fPzMaT65R/+5sfSeGDMVFXCe50+Uy9CZZWoxwTF
	 eDCDthqDAa2bLsE5HYBn1V3+9JjPZYSDO/D41oeLvgqaOWJRwCr3w5AuYXCqNKDkQA
	 FHpgno1Uiy7orX3fCzKqPOLsC9tuJb5ABOpTeZJStbCfBYV3pRWhzc83ztfmcJDmK4
	 hDruJ7J2ET0uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5204DC6FA82
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 19:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166318325331.20831.5164417318217357166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4603733bb8813d593e131a15614a1f7b72aa35eccc33d05ee4a84ae3e62546f0
Date: Wed, 14 Sep 2022 19:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663183253
