Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39BA91D798E
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748420394; cv=none; b=NKBsdFmdDNDRdmStUXJy1O0UjwZDMFfFynEAt38IQBjeSRUNsRwDpL70QQ+pu2KxGqh+3yf1shXinGgqQLmoNCVdgFPeKFsROi8DahYNeoKql8OIMP0cjO5h+/FzisaKSDDUoBBVFHz5Dwq72BtYvCzjmWWUB19kATRNEWH2Fc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748420394; c=relaxed/simple;
	bh=cstUjJfh3VCwPvh806YcBGMcsH5pzVc77Y7vEUJSYsw=;
	h=To:Subject:From:Message-Id:Date; b=XeoMg9Wwxm5hY9AcCR8RBS5tiYmc+OgEqLjh725jE86vux9Ilehsq/nfPW9snGAe8/3AE+6ocik35ZYZbctuXO/kwNZkma2w3lLhPjG7tMp/MJ8U85n4/W5ZEeITmV/tNHXoZC+5e7lwVGVSwIYTVWu1+REM4ILMg7BEaPh0FYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fO+Ig92B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fO+Ig92B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B73C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748420393;
	bh=cstUjJfh3VCwPvh806YcBGMcsH5pzVc77Y7vEUJSYsw=;
	h=To:Subject:From:Date:From;
	b=fO+Ig92BaUYn1X9Zi7fTBemX8SxdTZxkMIJpHv/RhVwsVZJ06zTK1+Gx5tW0S41h/
	 btnQKUudoXL5SIHezdjTEH9KS5JXihI9iYk9UiJPTqNs4rB0ZAW35tmJp0or/x4g4w
	 0RQk8hE4gqrgTdooAs1RHUVBY8Rro1Dzm4+HGpMAIcB62aSjZT2yL+ysuJfPUXWpRO
	 hy2UllBY90Cy5EuIdsDryxYFFljbjeFh7E6thQkIlUTzdgw/Jb1SGxrJdmy8kyZVD7
	 1QBXo5y65pIs+keWD3L/m9uQNW0wSfbVSLzqNJ6MMXITdBBzuaE3Qx3lkh8AU9iqmR
	 t2j33cCNUySWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90769C5AE59
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174842039358.23665.8881939475683300128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86549e239c5f244d742f684031368385f7e68cf66b6aff855a64b41296984088
Date: Wed, 28 May 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748420393
