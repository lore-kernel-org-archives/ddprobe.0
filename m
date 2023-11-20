Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 107D238FAD
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 21:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m+ynPgdy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F5BBC433C8
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 21:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700516896;
	bh=/xWDTL9kezQ0AAP9w9dDj51Rh75rtC3+mSgB/0i7lT0=;
	h=To:Subject:From:Date:From;
	b=m+ynPgdyLQuAPyoW8Mqym05TvciVN/mDXhTWQ+UR2K+apYnZ0CfRgkIigwzB3ZMhr
	 ZiCbir6DCYI22X/rTjIdKFVIVjYRnvvK2VOWE60Dhph0MoEOXK//+qNOV47oOkzujq
	 827IcOfGQtV/87qH7vQiIRbZlXbI7pXXz5EzbZEu0nMFiiobsZPLUzhjIX7TL1YA8U
	 DnL6AUUO+i9uA7BfTDj5x6GVRhdw3vaBLuAWrcohTzp2Hxd2z7w93hF4OPCX5eVLeq
	 X7fKnoMMZrEWrBFd7QxjprJvAa+Vz/L/B8liskW7gLBATuRBhLWEFCou8yJ6omKjD6
	 iPGbknGlmv+9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 664FBC197A0
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 21:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170051689640.32021.17377478447734666932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42014c98bd507880c2521e985d5db39b31893a5323c6476770ea44a8e341850d
Date: Mon, 20 Nov 2023 21:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700516896
