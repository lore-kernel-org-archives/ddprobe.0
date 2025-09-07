Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E25021B19D
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757234394; cv=none; b=KENqzEBzy1sneZBZGhRPmqrber4sspTT33avAAjUKqPuMAhiuyKm1V8Ynlge7VQTiKZh+ENOgKH3jHlm2QXKP+ifmtaMhAYTv3cfNZGvl6fu4AiuMz1Qs181vHWH2zLk9oI49jTS/m/iI0UOUEGzUaFjk1wu/sjppthbk1VesXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757234394; c=relaxed/simple;
	bh=KjX0C/sogj6/73FtjXa9bHLXbVhlsP3OHjaChr6+KRQ=;
	h=To:Subject:From:Message-Id:Date; b=XMKX+NRNlT9/geOu1Pm2wyExgA9GYpH+mAQQc4MvMXBf4bn0eHcDE2p7bSogEdl2FWjsWxhSFkxoYtNQGEZFP2r2XP9bStuL6NeG+diBoRqGUfdbDiAHtE/oUgcfSYS7Ihg1gXZuviPyG592FY0BQZinKS1HjY00mN36AxSwTmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nv/N+jnb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nv/N+jnb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE14C4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757234393;
	bh=KjX0C/sogj6/73FtjXa9bHLXbVhlsP3OHjaChr6+KRQ=;
	h=To:Subject:From:Date:From;
	b=nv/N+jnbg05Ze02Q4jNPz2gpXnWQ8gB6fuOud/VOSIpuFUwVX/2c8ir5HwtGsirAO
	 xm4BkRwyfcAJfJuh6/zWl64N85qdtFrKp7f/V9t33veU7jRbV6ssutSNVW/qWCKI2X
	 9Nn/KvUOb0mVrICQapPyJKIamkEENbP3jg6EajNHh3eCfiAXy2GaZwZoxzdbYTa7/e
	 0jq2LPzpTeYDlgFiXTVSU8NAfVeLcNo2sr4REMzXPNgVfl+9kpubgFmQzeWu2+IVm5
	 ZjUHKCudVACvfOaUplCwfWRaDWbTe6A+mGaAKoDnloZ48VW1HqRmU32zB1zro90OMY
	 Np1Uo8h4B1TOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F191CA1013
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175723439357.15718.10862192949593652839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20b571cf7c33170e92544fed22b49356ced2bae96e63028796bb4dc249c62188
Date: Sun, 07 Sep 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757234393
