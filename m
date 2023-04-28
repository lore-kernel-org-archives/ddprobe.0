Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 437EB15AC
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 01:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E858CC433D2
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 01:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682644925;
	bh=mPKMrU4SlWKhbWDurXNNbM/WEuWuRwe0Ujh0YODwntw=;
	h=To:Subject:From:Date:From;
	b=uoeZoe9mVNqL+dgVU2+/IS3oQd7bm4K9FzV78BTJGPmrquHZfTaW2QGBthKZf6fAh
	 uIOCjNsWo9e9hCZslmhUXxaDiwFEoBzBGUx/GZC3BjBZIEjDKIQIoN30TPU6dKJKKH
	 x1/2Appv+qtFkcw3Cr9v5qE2bCo2U+TLZ80NhVnOfWirUuB8jX4saalcgKovT2MF1Q
	 8sXfNzPOQy42yjtGKA+F2sejFBhU9lGWaXyRk11DUp+ueQ/v7kKyUnuYDGp9xPieTe
	 m0Tf7L23JXGcOjg7rXYWi3OEBv0AbGVdJMTWhXy9vCgF34juHy1AfQ5AyFs7UX43e+
	 SnGDGhYr2OkXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA0C4C77B61
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 01:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168264492579.10014.445394042358855193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cdd4341d98987481ec6ffce2cfc7662c467dc9522647eaf4b5c84f981eacd6f
Date: Fri, 28 Apr 2023 01:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682644925
