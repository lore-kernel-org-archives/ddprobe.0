Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D386257D
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 11:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3846C433EF
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 11:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675424765;
	bh=kJZckSa8KA/ZE4SwvH2+saUbK0NwT5fbj2TeTp3Hg04=;
	h=To:Subject:From:Date:From;
	b=fuRpxJTTVWyk7kLu04qfGICDU9zS4dYht+lmdfVYIFafKnnLCsEBLgP/zWRAhHdhL
	 D2a4/JznwtWh+E7o/j8L18V0PFGBhAyCV49Kh5lPUKPQmEuETMAXmr67qTbMNTdV90
	 nI4s6ToE6f4grn3bN53KHLHQxKZdaS8jfclDgz/AWFsebnSuqGq0tBzzornGNtE97h
	 S3RrTR4aC3bAXjwX+NRtJJRv4QZmUXkJqT61GnsV72CDkfbfHzDb072s3ZYTxo8KzO
	 dHYOEvG0Zz8szOGG+EgRRQYj+ZGIHqHwPf4FoiJitiCVRYt9PHQCklx4X/yD9t6BAb
	 TgBtMJJiO0apg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B78E1C636CC
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 11:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167542476574.20541.15939050300762296612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65d3561876dfe62c399c51c790370b0799c4a4839714aae54e181e2acae5f953
Date: Fri, 03 Feb 2023 11:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675424765
