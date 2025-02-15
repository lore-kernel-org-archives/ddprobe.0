Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D8EC2B9A5
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 01:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739584135; cv=none; b=J5xA3D2PoI4Esotqyi9BMeXpk/Ert1jn4efPvPnBpjlw6iz1PqwRKTEWmu+kHZr/7krdtGHnZB7hc1iQMXd/vKGKMaqnBh/Pwv+JSomLLMP58elGHYLUmtOTQfCuXehNzbTxcp1pu8e5CqQOUflzi177mmS4LvA5d/zAogW6Ww4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739584135; c=relaxed/simple;
	bh=7gkLP2g9BDiIP1PmfP7UpkaMTvuGQcFRI/FJH+AeGFA=;
	h=To:Subject:From:Message-Id:Date; b=jJjz2va18fkHIAnwnBEMwAnqEN9PBwk4vNmGQEGqzi8+tIrK3XeX+zUmhkPWF2v6VricjW/k63fIciUpgYOgJgaTIuUT2Q10G0hF6oPpsOVnAo1YuJs4qb1FEwm5n1iWD/Lw7XgyztBvzVdsxP5Pct/sPc9biDlmiD0+NKdA5uw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FkHjRtrB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FkHjRtrB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6D72C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 01:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739584133;
	bh=7gkLP2g9BDiIP1PmfP7UpkaMTvuGQcFRI/FJH+AeGFA=;
	h=To:Subject:From:Date:From;
	b=FkHjRtrBXKY64yCRLpNqYjv5U/eq/DIhWErqWMHQWfBVlSJXvV1bSRuCTNJrW1Lg+
	 Fsjg1Li8eP06gy6pzJ7pLrSaGtCjl0aFSWEwod+wkfXO+M5I7Y+B8tmNc3i/d6ktgS
	 otsuwtGXQRHJ2uqgRYrqF0VA+i0GSveh1gyEvBXSTFCousa1nTpqwiQzleBvxFr5Ak
	 agzEzrYzlgVEhnEhJDw1akBR/q+Y3MKXCxpfjjwtlXcCyG0dsSwMoOX6x0UOydj+07
	 AHFRIZG51q2+GYK2P/4skCViMVPjCiY7CuHTtDCOhRJ4yUWVEC8gyBz+01OanYW4U9
	 7KlHNxw1wQK2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D463C02198
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 01:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173958413363.32446.1826178956457402224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbb042ee0990f44fadd55c081c528136347af1c82efaff29828f31e32056fea7
Date: Sat, 15 Feb 2025 01:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739584133
