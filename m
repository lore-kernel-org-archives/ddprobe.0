Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DAC330214E
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758716994; cv=none; b=WWJLF2kCk6G7yxivHdfp4kEd5DSlyrc4n/V4VUti7JM5Tnijr9e8NEnIgZhX8/Wuw7LX80ltabn+KJdh/lmZgfVdgRerV1ITYYBMXA4VTRQaRFkkJ2Fy/al4P6TwtxgDO0Vi7C0Iyr+1n/wdXNb++DQB1xx8bw7aK8vDXKL2eLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758716994; c=relaxed/simple;
	bh=IsuzTixNjYaHiFTsy+PPcYLMHDxXenY5NxpgaqyvPuE=;
	h=To:Subject:From:Message-Id:Date; b=XEc7Mn7MkJvC8OQcenIB5TByd8sWiv3SW7+jZnk8NrQXM32zcbmGP21nJ8YCUgLPanMjTQdi6oBQA5/2kPjK0BjXeVlWaHuSIKhmTSVKcdfm2YGpSFws+utEK1BqtsyxIbbloqfS25l/tj/IVG6dQ0nOAuC8T65kknkRnMuOhTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FwZVOxLl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FwZVOxLl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2A0AC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758716993;
	bh=IsuzTixNjYaHiFTsy+PPcYLMHDxXenY5NxpgaqyvPuE=;
	h=To:Subject:From:Date:From;
	b=FwZVOxLlXV9CdbDTJCwYpCKShR7ukrz1dfo4yBYZlE+duTCkuEHG0G9xB9o14OREF
	 3H6azUvwvoMUf1dZAh1IPo4gcBjvu8orL7E0mABjdZe+vVC5y8LOVnEF3pHPRwZ4Pl
	 pXn5Aldoh8m0ulp6bIlp0h1wfq9WEIi0e9AoAs25/mUcmOi4wbQemfDYXg/prsVvb4
	 CekHphFcNORFtgpB6wnc+FXHgHWJ4NMvipCnuf1WW+KGxF+52a6uEY5CZ4XOmuTZtc
	 3FOWR9jcNlzn6EEdYsdpoi93ltD3dL6IKiRa3XXo+OX6C+gSBs3+PWyefLorQxgwBH
	 eDpvmggYtOxNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B30ACAC5A5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175871699362.20359.8440618354816307382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0fcfdb3b3f766f965f3e258f778d714a150c1d699743e37ac8653e861fdcbff
Date: Wed, 24 Sep 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758716993
