Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3816028751D
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 13:11:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763471514; cv=none; b=enyNc3tRsNgukE3+wbj+VrUsZrqbvjE5KK1J5jg/uWjw4S/9H06irtXqOcovw5kNHSjAtnMLpgRvAFNDPhSPrTVZtyTwOeU/FvZaAXSq0VLHUIAHvlJ7WwPFQe7SuM3SeK+B/fIt2ILKNa1ZOG/J+wqzpMOpqsvJ714b0Rk3zIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763471514; c=relaxed/simple;
	bh=+gI+BteXyep3m2qPTVeOi2u7BpS8eFky+n4Xb2ibeRM=;
	h=To:Subject:From:Message-Id:Date; b=FqDOWPk7F5b3y0lia4uhn2NScAepSte8XJKk4StqqCwrGK2/ctLxySs5spJi/pJnuRh2sS5I2g+0qg1xfxbMnxkT98zHrBZ2reI6GHUyRW2R0ObfK2vMKffZ/oP66b7FS+phTBwC08M9C7Dom7eCBpV0/Iw95Im0IYPuk4jMLqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pHXyvef1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pHXyvef1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D619FC2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 13:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763471513;
	bh=+gI+BteXyep3m2qPTVeOi2u7BpS8eFky+n4Xb2ibeRM=;
	h=To:Subject:From:Date:From;
	b=pHXyvef1g9mVlnlAn43rG8D6bHc6EugN5wFbcn35eMM7gzk2YGxJiQYKCZiO26JLB
	 YNgbsOn2O6yJeHTkr9qTGg4ciS36ldcu12x7YT0Yc8r0w97MEKeisPV3KeJcZg444e
	 VlKYmntS/NW1eV0z8z6Ust4j7U7uM8uMQ7OeFWoRC3lbMpO2032tt3T1uUQv0/9EYq
	 aajOh2sSccCeb7KSCv5l6PflQVZHguzEGhdQtqNxgFDdePhKH4buZUoUFQH/N3izL9
	 lHhaC8gPOAtQtnoJz0rqqBZotaZMYLaD3vB6IgcVfSxr4z62UBsl6JsTLmOSNNyQRL
	 rBRFbaFiKTMfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9541CCEDD81
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 13:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176347151357.15438.3315892618225086236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d21f48d9c8268ec3ac8ce01a8cb02a97b0dd5278e954f13f070c3d0d7be23eb
Date: Tue, 18 Nov 2025 13:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763471513
