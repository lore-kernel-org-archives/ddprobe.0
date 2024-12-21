Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42A98136341
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734801954; cv=none; b=dpaUWfb5fSVdduwVFtV1lQa6ciPmJpyujKNqQk2Yd58E5Uo9NZwOHvHCuHUuCTb5c63DlYa3jefzazF4kWofRHBFdUkcma0SCFDnbOJj2WZ3FNrDejO9GMUgITYZ61nMD57xS+Rl2HpPFmjjrRfVhn/2Tn+sUOL9oHfyW7ene5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734801954; c=relaxed/simple;
	bh=7kpwuntU8ATWj7B3JUeC6FdxID839kJ9VxJpwPi156g=;
	h=To:Subject:From:Message-Id:Date; b=ryy8hoRQcsrBSEAteUzwJ05W6cCZppsYmrMUGclPcqtsRlscoGm1bFAdgeybzjtlQbbRoG6Ba30rw+7IA8JUfSuSzMcg+vZvGdr6MCvecc1fhteDDJ3wDGDtE7bD3nyOPrhiIPuP1SldV2kj/TLeWhVhoA4kTSsvpi3SyQaXf+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nc9nXiig; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nc9nXiig"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B99D2C4CECE
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734801953;
	bh=7kpwuntU8ATWj7B3JUeC6FdxID839kJ9VxJpwPi156g=;
	h=To:Subject:From:Date:From;
	b=Nc9nXiigFyURx7NLWfOlFwWnfvIeQgGkJlHSi4n400s6SyV3MJXuGMXVgqZ2QdPvf
	 Q6lsFMXpXjz3rI41turJhRkuWE94vpAdrJs8yGn76tgrxNmpoiIU4qI5kt+3r0sKkr
	 SIcnZ4yaKCDloo9idFR66iE95zov5IhrK8ZEYqoIBhmrIwioQWSgt2cct4ExCe8Aak
	 ZpJ0sKX8bN3Zd+jvpRbM26O4BLY9KvmMr0HHLixtmebACLQFzVS/YsTFpZmYwkuu5Q
	 kTnDS1TWm2QxyrIHY9yFAMLsduZ6u0NlQIRGwr/AKUWfweik6u4+cwbGlmMQEjLtsZ
	 xjdEJKofSYU6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A238EE7718B
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173480195362.28655.9821917995956928911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d70243c55e51de1e18ef7b145b728bfec9c2f7f0bce7f16175a1f1ad41f35d17
Date: Sat, 21 Dec 2024 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734801953
