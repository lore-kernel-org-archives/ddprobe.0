Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FB5824501F
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 10:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739527734; cv=none; b=kEr0IaFt+/0/2wwdq3gFzFw1zYZj7M6cZBB3Q8sWTYfUhXFuQX8RhfERO/ba/byxTG88waA2YtqWEdWKWFtrMt35ASHAmfs6T/ZxD3/acHCPVrcai7f3V8tOLgTPHfPiSEH1szIYy5x4fRraGlnZphMu0DTOOdE4TuAi8Lc7uBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739527734; c=relaxed/simple;
	bh=Z7DqsyhM6usKy3mF9qTYlNIi06CJ81G8qTF3NQpkk9U=;
	h=To:Subject:From:Message-Id:Date; b=mE38MBnWgWgaUypEot3YXbfdiiSxd1SmaZp6kMDa9TPfDjNbUs1V/Ubr5yeXSNpc5xX7szS518Kpj8KkZcI2SJT9JJaYHE9XOutF+nc1nBOhWbZoPy329GeP0GfzRcpwFQ6dZKkfaZwVnmHWVua993YT3BvVOWFkETz3YVy+wBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I7QnF/xT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I7QnF/xT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB66CC4CED1
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 10:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739527733;
	bh=Z7DqsyhM6usKy3mF9qTYlNIi06CJ81G8qTF3NQpkk9U=;
	h=To:Subject:From:Date:From;
	b=I7QnF/xTUvNZwc1DoXvdcuSZk4rNqzPzlDojUve4xjU8z5rLjpsQvB0Sac1KCgIHc
	 zCxtcbSkuCTZxCSHu833RL9Bz8d5Uc+P65W8CQ5TKMiwJERm2TI8HmvmkuvGlxb7Ix
	 SsLNY9EcSgzkJT829GndyzsN8ZE+CVN9v7QzPTD3p2NkqgbZc02wOnBqURAmjiAEvp
	 nRKu8Lvj8U351fu5P5uNZW4Yv2kTB3fDQLsv7GF5ct5gVr/FTXjjmtwGb4xNwhHppG
	 o3CdWPNP+rCC0AZ234ubnvVFs1B9sXRPch2W0a8gOCyyv1jMXAjfFFrmjirDqPAA0M
	 OyMZckAZwi0nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945BDC021A4
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 10:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173952773359.7544.13357640885368623081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b47c5cd212e2e5fd5911c440a17f04ff73f305629c9229a934800456542e3fb5
Date: Fri, 14 Feb 2025 10:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739527733
