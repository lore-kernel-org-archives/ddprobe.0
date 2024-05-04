Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 572344122C
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 20:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714854143; cv=none; b=hVfyIfHzN9fPD/ETUPP6ipKn3ZVaFEQPUU7NJHDoM9GZDvTQMs0NQEyFfhaT1R4rlJo0l9GvWe4MNYNz06DDwYZe/Z1cE0ZgYZAgHT5L5MKi+B1UcrAPClx5XNK/YybDeAOsxoIHPzovDI1QYrdHFCrXKfFk+QmGNP6ylf2BSuw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714854143; c=relaxed/simple;
	bh=5Vp2LR40V9u4GqyPjAJ8b6TG81OGfu8OCUzvp4Kiudc=;
	h=To:Subject:From:Message-Id:Date; b=BlbSQdl3dKJ47R4/Woat+UkLOTPGihRuImIZpZvOk2XglB1ZW5HRkl1Z7RJ2wfJqiLH5lY8jp4s8vDUYbgbUT3VKau98VpK33GqLmJF8WsRbg0zdN4tJyP/OpicwWiJp0dSLwJlag9Im77VALXzUb06Mgf+/pjubiRPAKPFWN+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WaNaMife; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WaNaMife"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D33E3C072AA
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 20:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714854142;
	bh=5Vp2LR40V9u4GqyPjAJ8b6TG81OGfu8OCUzvp4Kiudc=;
	h=To:Subject:From:Date:From;
	b=WaNaMifezMdrVMxc1BgxV0r/x1mnp/Crwx6xfrwvg/E0fgmxYgccqollf/OM+k+89
	 unJDkpHtpM2VQawtIpvel7nThsv0PGQsP5jTHJiwkYHKc6BrTkwD69bBLD6fvaqQat
	 JVaauCHqgDb2zd6h+cXR2dGJTYPVwVQNwVsHBcaZbmO7nDvljf/WYQZbo8du4wK1s+
	 VI1mPNxd0tbkHz0j2l25IhMBxoJHCu1SQsiIN6qWVZS6UU4b+bVdMjKNxf8EvbWC+F
	 yeTPFQjISh2Wxl5bDnHBeLcA3PszCebZ14jcQHqpGxVmy9NKgltztuO11zcwpj+yf7
	 JjwPJ6xarx7hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE631C4345F
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 20:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171485414276.12421.13639875968406767642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 676eef8c368f90dfd2791ef0b570c2b05f01fe4afdb7f722a2a8e5addcbf1a3d
Date: Sat, 04 May 2024 20:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714854142
