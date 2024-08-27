Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D77F802
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724718354; cv=none; b=mlwoN7fi3fmz1sesTzBb120Bt9mqNjrsK+iG5Gno0VeQ820oI9hu1M+k2xAAUP0NhUCx8PrTdTx0Px9+UWfUqRqFiEHNRfW+2MtEetrb7XSp9XT+wLvFUlLBlohLkQp0OEIS3ieaJNO7CI3SU6hnQ2Qfz6wENokRfy5ZcWp/AtE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724718354; c=relaxed/simple;
	bh=xNylvTsY16w+lwLIURBT3tCRDO+XF7nMrx8VM/O6C7g=;
	h=To:Subject:From:Message-Id:Date; b=UdW8vz1YEKk4/YcNXawzVOnwGyYaZ4ABJTz8hjHQou+9DFutKW1765PnZmCc8BetqEC5t5vkKDd20i++BBut2nWgr+/bH1GXLxa3uklCUgi83cIzRoZ2ZX49G1XYcIyHSQqRMWm9l9Zef8NySVO8v8GP0uU+v1JxrvASqXkOy9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wlh4vTMV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wlh4vTMV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF1D0C8B7A7
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724718353;
	bh=xNylvTsY16w+lwLIURBT3tCRDO+XF7nMrx8VM/O6C7g=;
	h=To:Subject:From:Date:From;
	b=Wlh4vTMVt8pjfKz3Vmt1q96I6UjfxLWuZGZXbYzdcClwtIo/MgNCZZnZBXi4fG1qf
	 20sOLA0fXccN0DX3XpHRd6fYQMcYPjNibZThjKcF2VVSeWtAuDiv7hNjiYtKnxbJmz
	 61vRzlBRX3Jreqfe93tHk5c2zcRO73A4mIuQuNSXuS0nwhBx0NzYm0HyvX2Qw+RQMZ
	 HPy0f7j+YR3HPBVwezttqZttMHy8UIlcNGHno8DEsos/vfbfPR2SAI2rcekWy8Xxyk
	 NzVn+zBVOMQuHG7IS8W2qHnGvhAUKSq/J0GPfw5jm0IaBpWuycri74DgBiXEtFov64
	 xR+hBLQEQqSlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97533C5321D
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172471835359.8339.17278544699105599242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee818163281e025a64f98bd1aef5fd547c3b1b5adb72a3ef6c0a1201bccaf7d0
Date: Tue, 27 Aug 2024 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724718353
