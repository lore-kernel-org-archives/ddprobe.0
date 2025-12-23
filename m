Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D8E72E2299
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 03:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766462034; cv=none; b=qfEJ5HzUUzrHTAcWu9pP68bdSvYuRZg/5e/eh5Qt6VETb0IGjciRlSZ4mQ8Xr1/3YMivslXf8PK2SpgBa1IShyiozMl+rbThSUxsXxbpdvrSovNf/Oq9V2rLlM6gn0m1iHX8WC1Cmtrv6OTj+/6engBtKH4OsSLi79RZf+NVk2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766462034; c=relaxed/simple;
	bh=a+nJsDEQYgRwSoWsZwm5elf3NrrSVw/tmdyrVA8hYeA=;
	h=To:Subject:From:Message-Id:Date; b=BBircNI3Q4mWnT2qMtiPAJcZrYgiYJy8KBmF02KkR6Vfglcs+U8i2hEz6gP//f5w3pHFL+sOeItw6gjRdT/Vhs3zsCexFnZbD3kC8A5nBPt6GDUt2IgewduYeGvQ/f7dGjmO8gezN0Gw8FqaK7Rwmd2F1EAmVjU6NjauSppVQlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V8OUsXvI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V8OUsXvI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5277C116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 03:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766462033;
	bh=a+nJsDEQYgRwSoWsZwm5elf3NrrSVw/tmdyrVA8hYeA=;
	h=To:Subject:From:Date:From;
	b=V8OUsXvIyaIq3I5j2nlJS+5GxH4cy0bvHUrFCrUqAnkruOrQByROGBAwtB5EFEPCh
	 pxtxVeK4EK3lEU2ZjcZ4RrMocXmtNNGErwhfCfqGARhu511gDuqtC3qxuDfYEf7xrG
	 1Zbpa5TifAzy8c8uoh+LcM0gIvGy9w9t2Q5mWK0S1dZOAF54eKiKCCuLUgXeL9fiQS
	 /E/TDT/yhAjNH1hlmENkAeqFuLDKcW5sgtO7nSU4K5On3PLVpwgSP4/nqagYbCVDs1
	 Atbllp/+XGDJWAuzxOnMkG6Zdq2+Li2zwYYEkszzxjP7ywsUfisEanePPWt6VxKKzf
	 xoSC9DLYWowUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95543E6B261
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 03:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176646203358.2445.15294290869977637750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0070d6328b684e19641214b4354679b69035342add912703503aa4d5b125118
Date: Tue, 23 Dec 2025 03:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766462033
