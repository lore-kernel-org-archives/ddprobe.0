Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55E89277805
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744222794; cv=none; b=pY6m+av2zc17QCuJ6pzDGdXbT9oU0ZDUwn6Puxk+wYUZolAmy36nujm6SMxxoYoSBSabbT/Z7FuefN1Reioj5HEwBT5xMQa+OT/maQj66+2o8gJ0oTGxKDQRjtBUCneKRNGqPjwy2k0QzwKXIeD+e46qMLxovcY3EEyQAsqTnA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744222794; c=relaxed/simple;
	bh=c/a7yM4UQz0BZp1suS7V1oMH6bfft9RM66jFqDtSRrI=;
	h=To:Subject:From:Message-Id:Date; b=Da7c5IJ3HowqCFWV+1BUr5diNARPL+Lo4k+90bE2E7SykHKBJgmDLjWOmFiMVgMv44jqPWN3Z82LTbb3F2pa0sWb+iBymmM9k4FTcXsqfBhZAyXeOAlwwZ45zOUtCJcjBaWJz7hHeG/roenJTb9+zitz2pEC7LRaoDnY/NWkpnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UYVE4/Dy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UYVE4/Dy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0AA2C4CEEB
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744222793;
	bh=c/a7yM4UQz0BZp1suS7V1oMH6bfft9RM66jFqDtSRrI=;
	h=To:Subject:From:Date:From;
	b=UYVE4/DyKEYWbnObXze3iR4L1LP4X3G/Fcy4p61TCcPBbWZAmgusWCwKUoK3Sj2vk
	 jmO5hkgIaZO3l7H1srOw+UhcK6qiV73+DmkA4TfGQiJsO2fBcEvAnv9idjLozPY3XQ
	 xxrHquj6KdPRHPik4+iUxyeZRVpIADknOVdQT8ZKx2IVsd09d9WrH29g4pAryLTjzR
	 xKc2x+ofYvNxcl8sRDu+fnem1YyFBjqHTcezvxRln3EUpkaI0wVqLs6duEdoFXaaJM
	 hJHY/tNTYOev9uy46bPFnpmUBYDJEH2MFIHfxP79vx0IpcSi78/CiGP3sTM5in7S7A
	 0z9IVhcybB+QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3522C36002
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174422279365.18515.6663352060856062776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b79d4cd3f4c28ca90b62a27e9eea3461b3c0f245807f3ceeba24be0ea9b4d5d9
Date: Wed, 09 Apr 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744222793
