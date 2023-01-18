Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2FF97B
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 01:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81800C433D2
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 01:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674004287;
	bh=TDOLdkhMzUxH2UmA1FlNHH3GlWcLc7xc/fGBZsir2Ck=;
	h=To:Subject:From:Date:From;
	b=N7GXaV0wRJZrtWy8zqgWrmePUMm09u26nXDBpSTFguwW/RiyIniduxC/SWf+qKN57
	 mzNQMuY6//3x+Qo64028dzWGAOj+HXHeFIme+AbSuyuS3cUTwFWUb0TXcrofbb/tQb
	 +Nw2CdxpRMomskoUJAEyoXsFENKy9hTSNNkh0L1Onru7+s/Z4zZBzVPbW6NsKO/jJC
	 uejZPPHUYUEHukUuAfUVlRmdw2nu4vWH46dOCJ5+A+lC+NYFU3i89AaQFECs+/Onq/
	 JKtYTNhfmeLTt+nP7Q3Pg/GNHa7rnCyWEnFWym39mC0D78hAjj/m3My702ATDMkuwZ
	 aSsOKFKIUCxug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BC01C00A5A
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 01:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167400428743.5782.3339248145620176109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfa81175649b2201a6d361785cc046dd0aed43f2a648600fe0b82d4c31214f16
Date: Wed, 18 Jan 2023 01:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674004287
