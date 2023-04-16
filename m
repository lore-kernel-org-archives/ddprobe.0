Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 689CA186A
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 09:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0EDC7C433A4
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 09:16:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681636566;
	bh=5cUvIa8Uj0GEECWNAZjiWh6tr7K7BMS675SLy8jZRao=;
	h=To:Subject:From:Date:From;
	b=mFG7QseLK+6g0203LcC425b+s8NTrGoRVbX7DXt70/7ybBnYLyOjI6jSJ6/WFnNN6
	 IKx3AkGy+3ICE9/KKaKOSd81EFKE75QzfHjdmAV9lngEk7GT/swy45X/q5DA12i8A5
	 i+XIv38rhMS7tlbjsY34Qcq63TYBM9VU4j0ZVeXiVVl4lUgMZPkhDJyXCn67uu5ZT9
	 tgQJsF0vpo2GPmH2hqqAxJ6Rp7ZpJ595kh25pMaNcHYW4rZTeTz/VaBLuiO5Rb5Mbm
	 j3Q4oUkGEGtfZzLuF6MJk/lcvjft/qeVyFQ7IOd1d74Xr0mRjTrJtTMMnyaC4jDJrJ
	 VM/gQV7hZz3/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DCD40C77B61
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 09:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168163656582.15564.16566607823604970959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45615072c3d36351c2883278e26657f43c5f442dade38dec995d9340a6c27cf1
Date: Sun, 16 Apr 2023 09:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681636565
