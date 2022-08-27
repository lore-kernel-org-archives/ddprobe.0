Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDB83441E
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 16:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A969C433C1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 16:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661617252;
	bh=42GdHzgCM8F7fRjnvzOpBtt2sih0qxM9l+QYBtYnd7A=;
	h=To:Subject:From:Date:From;
	b=f+5xGGHjq7OKBQ09w3tgja23E0uEwYOL+vypL/2/GAaHBDG8c4P8o/WkgYy1JW5Tm
	 1kxXVFNPObyqBbJNwwA3u7D2jDIgeHpD0cQdlaV4TqOgdmQNOIfqZUoLHE9R1zUp5s
	 EbCy6VnXIJM486hVuwg7HonvvwF9Hl2SPH/O5be5b8A5yt0rWO8U4MXw2y6QzFh5AI
	 34dvXYpT6v7SYKHwUcxArf/WWvl9+ug/K/dJJhVG9A/RG6mWd99fUPsIWsEVQuDOFA
	 56A2e+M4q0K0cjx+CR+dTblgM5gs/4kdUCF2Tz/ee5dy6eisFzEGseDeLc305wMD2v
	 UtwGgZhW40ctA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 506B4C0502A
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 16:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166161725232.6433.5711011783319346955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1029fca9c8c4ef7ae2125610988e876fc26dc0ee54e2362d7c3447ee73040df2
Date: Sat, 27 Aug 2022 16:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661617252
