Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FA5C28314E
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 11:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773659694; cv=none; b=RDa4tlZCyPp0qzSEFOHOz9v4k3ZA00USCLVSqlSyj3Sk8CyBExlC0lDwHqsEKExuorxU5yMr1pGrSDdOV5eswqdqe90DoFX5I0k2Q4OMz4rDu2KTafDptD5agQRHWJ0y5OimR0Ttaqab3nsZiMj6qZ9wjyVt4xisB8RSfoeuFi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773659694; c=relaxed/simple;
	bh=6RTkeZ9LzCO3OU6OgEZcO5xBL0R9vP3KDVa0LA5dVwM=;
	h=To:Subject:From:Message-Id:Date; b=ajkKlZuQ/P7wXfw9Wnog7HsffmA+q5XoD5va39srHPVE2OZ06MhO+/5NtfrtyceoILx4q1BF+8joRZ3LPPEoV85uQe37VXvJjjFuJUyU9kNn/BXZdFZN8M9ktfkjCdamqWShZT4xHUKLBnTM/Td8t6h+j9wnQxvb2HmfMRGjd44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qJmYOBZE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qJmYOBZE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F0F9C19421
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 11:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773659693;
	bh=6RTkeZ9LzCO3OU6OgEZcO5xBL0R9vP3KDVa0LA5dVwM=;
	h=To:Subject:From:Date:From;
	b=qJmYOBZEK96rxvGnec019/L5idmOShlGy6L6jK4mDnPzNZI7bPTy7RlDwJh3FG2E5
	 EstaNr/5hLB6eAADulWgJkb47hMCpsHIIwgvFetgrIFSTc2w6N3h0GX2CUjsyHQTMd
	 +hqAGSC5EQS6ExLcpU+6ADRegrOgoERIRkrGDDC5bFlzRMeHYZEE5v5eiSl1YemSW9
	 arbvTJJw9wkbGjy1h3zLgVXgN5fFl8vshWsrddVpXsm5Wj8zy3FaG937ulU8yw76TL
	 k/jWcC36RBHH8jkF0kIsaGd463VEi2vqFy32vtVbxNv+3yzaczzZizo/vkpLf95Ocz
	 dl/Vl9CxSehQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE2CF46450
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 11:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177365969358.22924.9616021971128816661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bebc9b82d1ce26b16076285f1668934465a0a469dfabdb35248416459264cac8
Date: Mon, 16 Mar 2026 11:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773659693
