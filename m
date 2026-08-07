Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BC1954763
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786099834; cv=none; b=qAuhqNaLReQIrqdlMjN4e/Tt3uvDcF0PCwPAjzDEUip8oGiAOaEiTKOMabGvkaeFU7QBAG9fKuqmlBkjIqxcP+nFqASBtGgcz0xHqAeq5DtxO/grAqag0XOfuXAeBcMEHyIe1RzHpG2F0IX2a5zd4G8ycSrd+8oEhghNVbmMvnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786099834; c=relaxed/simple;
	bh=YZhgpl0kqpBnfti9d7arS8Q6S5DuIZmF2dYa6h4WTpE=;
	h=To:Subject:From:Message-Id:Date; b=k3BgR05Pky54Rj8wn4AFgATtWAz0u/uVeMe0SpmrFw53HYRPzfwcCpg5IpkaSrLqjcljLuA+oN6/FOoRT1c6nY9XtHi95tFDuxji4wSu5o/L/yqyMfmXv71N7M6KYJDo7cf5wxVr8zvWcpVFSeH0FTvudO9VXFHzdVjXm9nIZOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oFWhZKQL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oFWhZKQL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8CDBC19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786099833;
	bh=YZhgpl0kqpBnfti9d7arS8Q6S5DuIZmF2dYa6h4WTpE=;
	h=To:Subject:From:Date:From;
	b=oFWhZKQLQVsN16WVrm0k8wpiYMOM5GITlZntASjUTUqsqx7mF+UkZ3hUTqiVo1oto
	 75qo2nlc5RGpnSYZMts1yhcQJqjg3NUcEeduNg2RC8ePrUpHKZaeQg8ddnyiZzqcrH
	 q60NA2NDUf391Z2elgcO8PcX9XTQC7ZlIwYS+cpZKcpmiQYYHF8gYxTa9ysDIOIiHt
	 n3bt8wvVbnImDIeCLLnFnyCTpg9E9IqLxJYdQe8R7VQ57bAyAQvHqALkqAfjpwDsGM
	 yVOgGHKxaPqQGL1yaTE06vubQ68Vu6jYRTBbCJyWV2ytT9EPqpy+6W2af1g7fZRcvS
	 JEPch86/2jxqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B31C9C5AC7C
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178609983369.16477.10462284931160874992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61a5c02038ec3dd37283052b5f71f44e28deee1def1bf25019e0a52a30a27bf5
Date: Fri, 07 Aug 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786099833
