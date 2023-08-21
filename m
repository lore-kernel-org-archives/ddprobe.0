Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 484704A0B
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 09:34:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA2B2C433C9
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 09:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692610448;
	bh=expvu6t9K4a0914BiUeufhv1cvkgwyVh5qMCvsnkgHk=;
	h=To:Subject:From:Date:From;
	b=Pcn7S1r/Pe2WXeKh4P4kzncLHCbmW6UkQ76kCrgsXBJGULgUTiuPEyVjDhEVRB2CX
	 +SSvkeuz6CDvdJYfzFwMACmKsH417hNuJqLMiycglEIucN28Dh66PRsYQ8RFBinKC3
	 T9rDubyLN41mrP+7PKdunK2/MsdbHUG03zgTvDgJ6pMX/Cf1ffeATZk51ed8MmpCGK
	 DRebQC8Hxb40FbJrMZ/24BHCfoMBNHSwQLQpteBRCzUoFiEkbgOIuHQBKtzlwtCXZF
	 +KCFgCuhV/ezHjeAEOWaUY3LaWcnyOWUGbBCHaB5v00oAKsHkG9gZmdwJFXc+50POg
	 zj+97xoS2Lzag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2A39EE4996
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 09:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169261044865.32413.15195258636809615879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5217975c50704640a8f2c5bb6288235898041f7558bd6cb1bc525784d7d5e383
Date: Mon, 21 Aug 2023 09:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692610448
