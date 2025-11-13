Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2943D30DD18
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763071794; cv=none; b=fQW8bDgRpHCpbIIYxzPFeEhlfh+ghu65b5iV7zLdfdH1Q2NYGUmaSgpwYpzcsKB7mIZnEra/2GFQmXTzQov0+9cgneYZbpmya+DK+2MMoJw8/ic86S2hNQv0rVFSQXNrluNiokcfP7kKIoZry7+Ykg4lcSHxgV5d60AKcmDB7N8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763071794; c=relaxed/simple;
	bh=DjLpUWT0ez7cVQso5z7Z0OLZkBtTdEal4dOPypMWtLs=;
	h=To:Subject:From:Message-Id:Date; b=Yyykm9afXlxZq57wQ1YTd0py6kHRWcaiVKZ6/S8zMSUojsH4UR2nIBDsVhKQfK5QrFvNOHYk2m5KKWZQPEGp7JVbDHjWoMN5AGye+9P3/eaMfbNDyLmFyVYSNY5mKVOjNDXr3/2b7diQ0HFfR38M3rB7l2Jt5ydCaM37hPagISc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=daZGu70N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="daZGu70N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D7B8C2BC86
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763071793;
	bh=DjLpUWT0ez7cVQso5z7Z0OLZkBtTdEal4dOPypMWtLs=;
	h=To:Subject:From:Date:From;
	b=daZGu70NRnu6z8xBF51AZGIHnFbV//+4FqtXXLfs/QDEFTM6lZVJwMW0ebTIFCnTh
	 Hq5vJlh6xr27kPYlZAxEnAy0FpplbEEx1GnSrjteQfuiI2mUh7BDi10DS1XVhXohRC
	 qEJkbMbmjOln3EJaMKP8e8EYQC0pMazCXHncGyn2RWCKKHFMaE6idyoBen5D0jxQ/i
	 CRKLplkAuR+iWBLYr//kM2M0XX16v+mNKpL+Zrx37EdBH7u60ruj2I3c0+lKB6XhN7
	 c9nPV23ZBs7M8+0DWBL9juKJWcyzrK12aNnZQkKxAc+MTUvSeVpzh6BXfHy/Z8kGlA
	 4C7urD3JTD9rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908F9CD98F5
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176307179358.8328.6712530790716657752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efd675111ebb13ffcf7247915e83dba453cee53922ac87301a936e01f49d5291
Date: Thu, 13 Nov 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763071793
