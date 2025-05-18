Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9C05136A
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747567193; cv=none; b=iXQGf4arIpxohVtYGEDjp96/tN9rrmsNbALe5G41jIV132Vy4jxng8b5UjIY0iSzyuntLy1TxhGRYGbwID7sKn1o3mtdMjS22Xc+QtTQTCe2jTK///bHrtclfT/B7QzxiJIv943mk9Jo5KJ+zN0hnoFgXh17fyRIRmHj+6OF+iQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747567193; c=relaxed/simple;
	bh=wU1RzQer9MfnqIhNZA4mrOF2txHvSILHCbunqrf3vgo=;
	h=To:Subject:From:Message-Id:Date; b=K0i+FNBinYzH95MdNkbiTnIxsNDtXnEw+YlLbjXmWlEYFs2CpmaxcjeIbNTKiNMIxHFypK32RNsMsWP+qXA+q1x2vzl5g7xCVzRMTdbxw9Jrl3wqr1twdx+t85mJWmxlx9MnZ9rgqSx4HLSAZMnX16LViN88L3RQySoUOzgjXcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OACyANW8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OACyANW8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D74C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747567193;
	bh=wU1RzQer9MfnqIhNZA4mrOF2txHvSILHCbunqrf3vgo=;
	h=To:Subject:From:Date:From;
	b=OACyANW8P2gg/xo0oPv8c2sUVXbO+22jIaDIPwfJWSUk+49PS0TmWvULHez+QYVzw
	 f51A+8uMOCAyLPDmE3PDohUKPzt0OkdfYw9T2AnGcGf7S+q3JiXLAyO1tTFexpiZgb
	 OcyhDQa6mg49MiZqHlPvx47+3+eeY2FgpakpdAQ6Pti1Rk3bUyChCt+c/CUurrBbA+
	 HASIgYmIvnRW1Y5yXAYDhDHsaFTIZdZ4kGtPyx9tFLAe+Ycr4xZo3asoZDmUz4sCnE
	 j7WZqpH7rVkJrQXwJStRkDumAwMx40DMJj2oE1T/Neq/hAIe7GpWaPHJcYYOVlDKEl
	 R+smEy5+HOOrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942DFC3ABC9
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174756719357.21219.14611431271245666053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbe10b2f9da3fd996b77841928374b846126e9723817e928366fdfed6fa4bbb1
Date: Sun, 18 May 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747567193
