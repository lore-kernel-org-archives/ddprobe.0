Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BE286AB1
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 19:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D631DC433C7
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 19:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694030048;
	bh=CNKiI+OwOKNI+exoWo4+a5OLF0wP5b4groNc7ngCQhQ=;
	h=To:Subject:From:Date:From;
	b=oL0uzu7EyqTMppf4KjnyGDXXDePCI5DSowgrLg7D0ePbfOsZ5DjyVsqPbrDUAE4gF
	 Gl189ECkmBrd31+1XudxdLAdosPWYHZoqdlQX8l+hxSN4WE5QudMu3QCyQ/Ig6QQeP
	 2629ksGK5WYi2VrqE/L5lAly9cb4WLyYtZ10dAUqC1b50/FufC1S3QNBhj2r19JB1J
	 JLg6JLvVuc7Az7H7ObRk36ar5CP6Mfp+PpSJWIFdedUavcirsNDGw/ScGhlzgZ4NHA
	 j0JBWRpscNG1coVx5Whn8iSFa64BT6QDann9yzv050mUWcL0QxzoEhnu3/bJmbyvV7
	 sFH6TVjPT2QCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B761CEE14D3
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 19:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169403004874.25315.4279541060402764803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46af29bb6b72309c81d2bd62de4f635668e8a53fbe79a1d1f139d6482fafe96c
Date: Wed, 06 Sep 2023 19:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694030048
