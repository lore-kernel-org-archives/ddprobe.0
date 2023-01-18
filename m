Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6E3E15A8
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 04:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85ACCC433D2
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 04:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674016287;
	bh=1Xip5ZaKyQ3wczcBNgdDLl6gQDyxDsHGloUlzhvnHok=;
	h=To:Subject:From:Date:From;
	b=gNn0/NWNdAfETgsKwahjlQ5Ugw6C1CEx4v+cbt+uj82nZfMJZB177pS2h+lo8v+3d
	 lmEwvS5V0DlH+pepXfVDuYUR+RNDDrsBvxn6iCJY/qz7c5pNMdTVdqVufsF0CF7h4I
	 niJgqVZtM4hjj/NI417VJP8PTSL3vO6iB1KWz7FnJ8BximEd0mePbdzX9SJO4jPIAd
	 Z7Kq/m/7yZDCIZXicfN55c8TqnMGGj1vul1GsMxbH7bxRf+Uc31PaECfiiRIX9ccuk
	 Jm1r8gagJrugY8cUxi/74X/PfHlOWl6G+Zc7TyTwJZI4pbwAMChTDR6UJqOnrCpXaL
	 6Xbi8cHkGOn1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6997AC004D4
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 04:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167401628742.16548.2102707867411768234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60acb5e1b7bcf9d5c29b99a671d0cd26fdd572475f938b0b9f5c914e03ace525
Date: Wed, 18 Jan 2023 04:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674016287
