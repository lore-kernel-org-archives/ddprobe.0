Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 324262F33
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 11:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DACD3C433EF
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 11:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680866285;
	bh=ASvjDdmVRVyCH/YrlmpCydFXGhNngZx3m78QNDkVIUU=;
	h=To:Subject:From:Date:From;
	b=jtIwuh88+wvLoaC9np+i8vFb4+tIb82/f8FwfRwbhLkSkuVQcg05TVsDNWvNY/jwc
	 k4230QGhBznZf7NUfiBAmoGBzBR7yV6oUZ0KWYQeJNcMCpYWtsZc2Qk5dqotRNg4/d
	 lVnXVAFC8edqKooDQD2Ud8b6vpUiKFuL0XdnDyoOE4DdJlxjCdXV2xbFh9NHpmWhUL
	 Pdo1Vx5ZN6vakErwgcIrwJaedTVl3Xf+HbZffFpUjHL1uS3qS/Smzvx9Ho0unjm5wp
	 ZIQfSFJeAwp0OVuCYOhVqBjkQO8vTRekiA0O/FTuCA1UHxiyr+tC1DXP98beUJnU+7
	 iUrgtSXuXNtug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8539C6FD1D
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 11:18:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168086628574.18112.15659351036766740148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8102fe3a78dabed6a74d56a5c8727b9eaf2e162d97eb032bbf80e1894bb88a89
Date: Fri, 07 Apr 2023 11:18:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680866285
