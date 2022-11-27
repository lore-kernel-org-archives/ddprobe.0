Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4D8317C3
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 01:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DE35C433D6
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 01:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669513854;
	bh=tAp4Zip1xUNd+WvyHGOpKeCONFJsA5Hl/yLFG6+O3PQ=;
	h=To:Subject:From:Date:From;
	b=fYyPZQByp3KeHJhTdffFX8vCIRl57S5IewJ1e+lsZ7abEP+QbOMuDCk+cvknypaK8
	 TI6I5tM0vvkBSSqT3pYF4lkpYtha4THLOa8MhEX/BGBsbswznmFxO+Fvornlv7F0dg
	 6XYmzFW2a43ZujayKDLgI42vcaRYCMNRTswzzqRst3Sp/XcAAAh6vWaio1lfBWI8rx
	 vT2tmacdKOdGQRvz46Hwf5/GiIZQL46bZfyhm6UjGPx75HomqJX4kw1J+N2Ey0DU4w
	 WuV2DHS3s3CLHxFVWm+hnaQZ31yHaDQi0V1eerZ3DqXQn3EFpnq68fFE0zRcYJoWNb
	 9gkjLirnzYPEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 568B7C4321E
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 01:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166951385434.7564.15492719539990141063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1c30176cf960f8e3d9928910ef873edac964f4281e47e3018065e2722a3a8c6
Date: Sun, 27 Nov 2022 01:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669513854
