Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50B919443
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744430394; cv=none; b=deVVVQROQqzyBSgxgzTDlU9ceuQufmnr2h/RHAQEBCTZAoI53gma7BSr6Ux8bjnR1d0VjVT7FyFIM2r3Q9XQ+pQOqa5kHGDm0BpaK+vIZbBxQ+8Kq992LdRKdOpszIoEZWGZRvvlntXBghqjG53v8lUaY7R3nzN/MzZNlCm+CyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744430394; c=relaxed/simple;
	bh=OvlPA4sNxBtceV2OGNE+scIcIyHQSID80WYR+2DOup8=;
	h=To:Subject:From:Message-Id:Date; b=I0M1MKugicMd+o5jA79+x6yZv3XKlgbica4qWs5KMcDNc574peL20wbibcsL9pEbw6f6CqeKiBG+r2+mxBud7mPHGNRJcrNSkyCMDpnD6f/IlEy7FHbgaIwF1J+zDa0YbZLj52PeB2rSToqJ9LjWp/yBn+y22jjXHy8oZ1VJ0zA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vJxi1+bY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vJxi1+bY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B0EC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744430393;
	bh=OvlPA4sNxBtceV2OGNE+scIcIyHQSID80WYR+2DOup8=;
	h=To:Subject:From:Date:From;
	b=vJxi1+bYHr1p0uUFln5w4Fcpn/j3LSeAG37zhjurMvmn8ZyWsL1WJgSz8HuwWPqUx
	 GpsBpMzl2aEETGEKQp9LwRlwskVfG05R///GeBY1dO6VrjM8lQVjTN4Z2B+Md6AJ1K
	 VFvPk9mNC0m+O22RI8D2wj0e63m7rWLrLJ/DCG1X98JMQsmIFdSWkN1DkkJwxLuPML
	 +WEWRK1/5YTPXAPB01eGgL1qPcj7g+c/Ga9o/BytfBWgVVoLx0SwOMZZAoOH6MwiPC
	 75wVu7o55/DSwlklBdTDdHggx/LU3KkI0DEzZSSE58BHiLTKsEK1sZq4yvkxghS+Ru
	 ZRoajUKjJSf3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91854C369A1
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174443039358.32518.10757337991629364282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e8e3c4655a0dd131fd35f25a7f53aab52159c57a9635f5823f49c1f0a4c650e
Date: Sat, 12 Apr 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744430393
