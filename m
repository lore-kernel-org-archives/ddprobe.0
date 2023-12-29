Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B0F47472
	for <ddprobe@lists.linux.dev>; Fri, 29 Dec 2023 08:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iwOc8AXN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E562C433C7
	for <ddprobe@lists.linux.dev>; Fri, 29 Dec 2023 08:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703838496;
	bh=nH74idmQIxBg6vJpvFgzCjSStoeErk5Ir9p4hPC25NM=;
	h=To:Subject:From:Date:From;
	b=iwOc8AXNRdDJn64dcLz6F0wcrEWDqCjDD+HgYRJ7gCCE7GEZXwPesl8f7X0vewVOB
	 ToP5UGZW7pZqj4ikFZ/juK2Jrdzxe5rvnI9FfEldsatBojMRNMBaYgoqGTnbS+NWTd
	 gsPfuQ57Or2WqYarJIMmRvmDkV6vBlUCb7WWDQKWcZdY6uw/90mnJkWlWM7wJ3Bm/h
	 dCJ/jWxFnZvbXrku7nTjP6i+D8faxim3xXcmm05J1tBAz2+55otX4E2EiQy4leLmCS
	 PWHC0ACSuqE2SuSxJI0Rl04anMYRWVeBopGxL4aUCseQnJ5JY4agKidjklRK1h0CZl
	 qgJGhdIpacngQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63B10C46CD4
	for <ddprobe@lists.linux.dev>; Fri, 29 Dec 2023 08:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170383849640.8294.17392296340865778623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49c8cb65fb6862ba32e21b13819ce2cf7db6e4408918c4cb08bc2a6767f645a7
Date: Fri, 29 Dec 2023 08:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703838496
