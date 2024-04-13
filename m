Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 448FE28EA
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 17:19:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713028763; cv=none; b=YFcAee4gVepZcO7Bcv/8ntowZCH+KuoPCdM0oMy/VyNQL2wFCVKKk2TZ3LMhK18mqnCNZnvd3Pc/t7qOtAoQbxxMpct7XH+1NafpDrAWmVW7D/tzz/d0GtNwHBd1o68qW95dRyiftYZIy/7ncoZb+8WUpEMJzHaTR7YEExNdnlo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713028763; c=relaxed/simple;
	bh=E6mR+cNj2fDtI9bNTjTkhkyfsBbqgUtvOnad3Ph0pp0=;
	h=To:Subject:From:Message-Id:Date; b=OsGZrwvH6x1NNJbSQn9p6uOEH+okm7I/IjxWg9KTuDSL3iOAHfShEA7QmJbeajlBo1YFhPU3NiY3mHhF5WY9LY3TB76Tg+9fOuXyp6XcU6SOXGARNkQSIVlSfMMCzF6m9SYVMrRAd0PrZgzNZtnjWsmcxvFUqlu+iLKIFS53Cjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qGd8wxzT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qGd8wxzT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE318C2BD11
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 17:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713028762;
	bh=E6mR+cNj2fDtI9bNTjTkhkyfsBbqgUtvOnad3Ph0pp0=;
	h=To:Subject:From:Date:From;
	b=qGd8wxzTjJaTInSvbqnfQk8eyVXTuVdPlYGhmKR6boxXwp/Pw+RbcY+sLHoW9x8iY
	 O+qaaO8yKfRl5qbD/iRxew6e4efHL5bsxZNPDAC3gLdS9ev15iV5hH3yP/okggHoOw
	 hohlTt1mAzU+6CPwLSy0ZWN8axpNdVrut8pxIu+OZbd/fnZqWRz9X4iww82bAeP8DW
	 D42YpOcrNRDugfunNGnWnCl7fzXueAsgrQc6S2a9qSdxOewiTpYozvhld+eRf8PTHZ
	 K9eVocKr9vaF9EvTdhWqDVsQkUBmrO3W9R6Ct8thuwAnl1oqMU1B0OT3jb9DJaBjTU
	 V9y5jDTKSCBXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFD84C4345F
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 17:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171302876275.12722.13683281162357738785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71beadd5aea8a18f8e985ef9b249834a8847b77480c5e75ebfb55e6a30ed1ffd
Date: Sat, 13 Apr 2024 17:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713028762
