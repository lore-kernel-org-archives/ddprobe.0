Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 082F623AB98
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 01:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772242494; cv=none; b=HswOzYT8o3K+HffaBLIbXGboxEAWDrX6eVZkPxPlO4MDsRCQAWS/1OjTrJJFSmqhLWlwXoN9wt49BrTVtYfSFngo8r0gPQDthqNc0zSwHdqs5Mk+oxU6iLFgg/6lEPpAVZ/b5KshJ/uOJ6ty4ZvwBTH8SQ2mvb5VUoz3bMNmEHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772242494; c=relaxed/simple;
	bh=UU9q07cQsBTVmFtk7xKJORjM+ApBFCGoXInSYFuUtzw=;
	h=To:Subject:From:Message-Id:Date; b=enooDiPXhcj46lxsvyRHq/81yHkKqB3a/JQWhnOzSBMgp1JuVAlUwYRruJ7pqNMAogUEBNfEHXfqZvVA7pVTHkeJGW1P5jtPgEix4ZVMytHRQVViQgM43dUT7E3oa+0F+JuSU5pCjUE0Y8lmA5irnDhsmhg9eLfjQH5NV7DjTdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vLbtSga2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vLbtSga2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2696C116C6
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 01:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772242493;
	bh=UU9q07cQsBTVmFtk7xKJORjM+ApBFCGoXInSYFuUtzw=;
	h=To:Subject:From:Date:From;
	b=vLbtSga2lE4gf/J2yGhs52BNi31FZQjp025nPegYsOlZMu+Iyb+FOD5nkSL+rBY2H
	 xf+ro1gnSrlVuvbv1tbteptKsXoTb1+5UCfRDE2f8DdqIHBzROz0UQJS8c8ezyiWaZ
	 1RHJu66JWftXb+z1Vs6sxpvwYY/75Kl0ib/LR+OtwT/qkfWbDtZzXB3N0X924ex5iM
	 U02RZ2QyZjKQMDfG98cL5he91wGOTZ9Jwi3Bk6J0Wks+40F264VdKdzTsbOtF6yDPr
	 iUC6qT5JFsD79pnG+P49ScLbAEiPXHfwrM9FE9dNvlpmNnKO8h+H2mF2/DJp0H6bQc
	 nb1jy4eLD4rVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F97F1048925
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 01:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177224249358.30247.10509040790857349084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8038be9b3e0f8deaec7e4d80e5ff47f3ef699a9f04b817d31d3cf5d581f89d78
Date: Sat, 28 Feb 2026 01:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772242493
