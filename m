Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37ED4647
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748525394; cv=none; b=oAuzmdD8gIk/6fSrixvISiLRRR9zJ9Y0EDXG2O89BWU49PrphGvjoHzjrtB7E65sYO0r3wtX6aQ8Oyxt4Kqrf9wiwg1QhMHq+iZthDd+gWMcMohGDafYOgcduLFO5gIvFKH35x0RxWeb2xrPfTtu9cklHdzH20W9ZhcxH9AeEhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748525394; c=relaxed/simple;
	bh=ANGtzSPcXRVcZfqF1OqoVn4yD0jJIDZ5hK0/NWIzJbA=;
	h=To:Subject:From:Message-Id:Date; b=KLBwkOHsxbQ3ed12xsWoWnuo4e042MvJbYqVMBZ2J0Vwba9orQtbk2RIUprmdAJu0JgSHQoX/58q1R/AXZETkA/3eHPsFbxNT9Q+R73Lb1OfZNYkZHPM69XezH6FCff3+LNADfwJEPnzS276ZbX/sWWPpIC/VV/NC0Zr6jKicJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OGqNfPS2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OGqNfPS2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F80DC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748525393;
	bh=ANGtzSPcXRVcZfqF1OqoVn4yD0jJIDZ5hK0/NWIzJbA=;
	h=To:Subject:From:Date:From;
	b=OGqNfPS2Xayg43M7f81ozJXxVWW0vx8d5ydU8vzuXMI/yLenIjdHoHx3ekKvXrzjC
	 2cVIhXwSxQmIAMkI1oS9rn1uaRRzlJg2vCfuMWqGKY/Ex7+uqqiSmE30YfhSZIsBbt
	 dt2UBgZvBmffa4Y+fjibAPSJcZCQWEDjYgHMwWy8yVHWrdOa3ybJkkk5gZuAJisXRY
	 ne5HpRgPx8lAM5bByGazfLY39+/MfETLR04n7Ri8wGz3Dsio/kIM1ZeEIgSD9FdKOV
	 P2EpZDGe1WmgYXAby9DxCryfP235pVqTwmn98RVJkkvFismGeLzwyllrKucBK4srG1
	 D/q3/QX4xbacw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E390C5AD49
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174852539357.21993.15191196321612918132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc0c4190c8ff44400b8cfbe224f574c96ab3bd4fe229687ec9fec0f30589e193
Date: Thu, 29 May 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748525393
