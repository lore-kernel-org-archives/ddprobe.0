Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D65D86337
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 23:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766618034; cv=none; b=NwuidjmcfZjSzn7J/2UW4epv9gBGGttPVBvrh9LBMcu7ph+2gCVHuC4lpbZ90BVNIES9kcU6YKvjQPCyedmvmpyQLN9wHA5q4zS1KmgJYeqGkw7dpyUjpnsTpcOATLmecwgOk2kYoaY+dx8ij9XWELR6beGNwVhLER80WZyTcSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766618034; c=relaxed/simple;
	bh=JRPwVEHjaT1tEMeS7sHhGwHXBwfmIQwJ3wJM+QWTn40=;
	h=To:Subject:From:Message-Id:Date; b=LyKelygaw/hVxynMC5RD64jcbhFB8wiVXSKJokM4jis++xyQXxJu52K/R0meCbTKL9g4NIEG0GOOEh0olDm46sR7jjRYTEA6cuKcNxthZInaocWHlOKtYuEKsVF2en8C6B2hHJ4OeAT3IHz2HJMxBFLaRRctl1qsXJLOJ6tIxYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CdKz3qyu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CdKz3qyu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C5BC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 23:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766618033;
	bh=JRPwVEHjaT1tEMeS7sHhGwHXBwfmIQwJ3wJM+QWTn40=;
	h=To:Subject:From:Date:From;
	b=CdKz3qyuPToRWqgxEZQtKHuYh4CXpuFdpfaJC5MJtK4lEa4VzQBNBU6JgTKka7aPb
	 bbHWu30AzerUWjPRZObB5rtJI4apBGhgz8UJo2CW0xo7x1dhXKXjDrYDyAkWTBLd3I
	 Y/3BJM9JOTj8Hhw+u/9K99pEQ1RddAWiUWQpWcnZX32HwbCJYXB0hLyvft4chjEYZp
	 EB/UnzQheGMDrJY8bQ6sjjzyTi7/ondg/jG1GRzxCG9N7+mLUE9YPGiEnPHT6t8GeK
	 Yj0veB8eDiD0HTChxEbjWGm/2GdDG5kk5S010Rx66wjD6gUPAJZ15agj8lSIZrtWXP
	 RsluDzy1W2BpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90846E7849A
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 23:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176661803358.10373.136644487824227585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78b3b8b71715a5830049e38fcbb5bb50cd7638603e42b117915d7fff758e080f
Date: Wed, 24 Dec 2025 23:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766618033
