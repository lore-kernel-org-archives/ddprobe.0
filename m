Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 407BF1DDA33
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 23:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741996134; cv=none; b=FLXQEPNrTaHV/mlilshbjBwHgXGg9zR0PksTaBuofFY6LQsn5lTyvQ+2Lj3hQQW3+X/jljgC4VsV9EUVNc15iOeu/SYAyfvshBjcqqtTUjHhpQQcAtxbXSZLn88Sus7mxqZqFtPz2fX5btg9Keq9+B/9qROUae+H6/B3pRSifCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741996134; c=relaxed/simple;
	bh=zzx/vWg0mDO+mPIP1bfgQh+FQ7COo5lmnVYqL+IkpIY=;
	h=To:Subject:From:Message-Id:Date; b=c5/+lUgthEt8NdOD+GfkNUM5bedILquq7CaFEGrM+wTgkZ/87O53Skg/OQD3TlhckBMpn+G9IpDZdezl6yga+Q0polXiETMk96DPtS2i80RaogLK+HHfucJkcEKkqWGM8GiHOQDH5BP9MgCdlv5tKIxybCnj9SBhBGEb0HrhJFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=usNIgegD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="usNIgegD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2C72C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 23:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741996133;
	bh=zzx/vWg0mDO+mPIP1bfgQh+FQ7COo5lmnVYqL+IkpIY=;
	h=To:Subject:From:Date:From;
	b=usNIgegD0M9nXmeV9poGoWNxtpMunecNAlGd7ehXORItwf+9WCsaBvUF9vWTWCiLw
	 N3AcgCrn41yLe/5uFgRONUTj1gL2P1STX2el2bUBqL62bA7iFmvRM8efPTkLHnAVXH
	 wII3yJzaL1wHBTs5pLlo/QcDhKW6/U3rnRyM9jIg8xcfzfFEdPzr/MH2jUV/ncHdb0
	 k73AFCZooyQonQYwdZv8+vOdvHj7AscCVoYWHrLKfq3fLum/jvK3TppMhOwv8c6eDJ
	 63pAAvsGI38xAiDJpXLa6LDik8BQHSXVl0z8d4MRGpUmDfxoXQzVrM+9bHqYi+9pYM
	 U9C0C1UqTGlng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 995C1C282EC
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 23:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174199613361.7471.6383932669907170038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 364ffec96573359cedaac206af372348826adcab23597234d9b66ace0ce2de2b
Date: Fri, 14 Mar 2025 23:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741996133
