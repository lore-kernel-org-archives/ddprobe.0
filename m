Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 382A3179A3
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747975794; cv=none; b=QOeGSsxHBaqj8PcGUSaukHWdAAQofQ1xG6vn+1oXFbrOtepFot7uz/nF2pIakhwNVWTvvf6pAfzECWCIG7t6JH2IFkGCrAwHNRbk1ChUysMnytvk5eyUxpLrAp1UyHmLc1gBt8yeCFIJUCG69uTHYQEbvq8NUnPR4Hrf1kpcBSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747975794; c=relaxed/simple;
	bh=25cy5xh87YQ7menJZz/f7MIyFujy49Q+ykiZAQALTfs=;
	h=To:Subject:From:Message-Id:Date; b=OKOK2AZ/mxbUp+3YjIh6VPD/hmYT6vdtTmrpkcUPWbaWt7jx/w2+2GsaXwQPH8doOpL8au4R9pv9b0CaWolTE1ISQRIcgwv2Bvqhrn8hzD51r8Ipr0A+U+Xlv+XYg6ZJIVMB2YfB4F+qu2xdfePXNwJc4ioWZre2eraBtsh3ZF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ELfS7mJ5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ELfS7mJ5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17C9C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747975793;
	bh=25cy5xh87YQ7menJZz/f7MIyFujy49Q+ykiZAQALTfs=;
	h=To:Subject:From:Date:From;
	b=ELfS7mJ5SVuBcZQWMFgcZJ6rG+VT9+SeN8kzQDSvDpWo6mA0Lc9hhbfnkf7RSANvT
	 DllNfWmmMHod7S0SoL2XEQPwmTg8odZMWikfSmLSf6+2QeF+N40Z7Lpoiewry6ECcW
	 JiHY32JZHDly/aeHDb/7y41Bxi6I6U4ql2WUbxXkadFFjLnOjs5Z/gENOS2zokQanm
	 re2vdfgDgMj6ty55rCR/vwt0+UlVx79WN+e0h1gVq+g9jaJJqul67H6oGZzn661Fxp
	 IwvJOAf3NpEJD6QKsyz1Phd1ayI/WG88yqWgIMdC9a5GCgMmBK6o/XPRhuN1f4uFYK
	 7vUmTSVvXZH7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F712C3DA6D
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174797579357.17426.3674520223993421979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d759f5c85aaa06d59ebfeb041a5b2876e1aacca57a46105a4a50368867e0f7d
Date: Fri, 23 May 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747975793
