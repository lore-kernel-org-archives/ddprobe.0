Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4FE5323B
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 18:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7ECB5C433D6
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 18:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668624054;
	bh=XAn9IJheuDaSbIqfwTJkug9+T0DmHWUAR/T2uuG8s7M=;
	h=To:Subject:From:Date:From;
	b=ezu88fwuTQuZHfgYLgVLfxWALQOQba3ymO5qTgChVobZa8/yQUFyUVgR7xgg6JQLk
	 z536+sxjIEWErNuyvCb6geBNF9M7fpHBQpzG0YnQE2N4w9ImdlV4F4+fO8unDEbAxq
	 qtEi1DP0bSD3k4MjEyYJSiL+yV6Cy/M3/gHpwjZo0oGJbszSFYdasXYU5Tw9iNwQaA
	 1ZlkI8Z5at58bjSiLQVRPoaU+b2nA7zx7Rkcn0vg0SoavRLzxFtPhsGyS9sgoVd4Tw
	 TwQREaaBywp621DGmWzkGrGuthBRCFA3dzTO4ZQNZdTRIc2tQrCYGORCsQQq0GQ19v
	 DdefvkRLB0kCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D1D0C433FE
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 18:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166862405436.24017.1455449055647608802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 622b3c8ff5ec36f99368f90e08bfce1f7971b18d9ce5dc8ebee387aaf0137a87
Date: Wed, 16 Nov 2022 18:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668624054
