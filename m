Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2772F20C48D
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748378994; cv=none; b=bnVfVFBM6Ndq+2qwmKDmCdlAdh8lFlyS1bBnLhe8pg+MwMFk73nM6S/ODz9wyrUHqJh/e3z7hNvPSjg2I2rDr0QZqvU+Acw6PQhn+b3CDAnsd4XpvS2SsLWSUnYtBlGBVgs9qRIKWk9uPOV8EBEH7zfi4H9P+vyO8zB8/YNdNE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748378994; c=relaxed/simple;
	bh=I3eNIMSP1wQUgovr6wAef46gVzuUT98iOwgtKiT4uo0=;
	h=To:Subject:From:Message-Id:Date; b=cxXiNJn0PYp6QkGZbJ8PBf7ZynFOwhgZGYNRpcDSxkWGB+oIS+JgPO9L12jI8keKKrW20xF9BP9ovbXJCN1lEqN68AgMUveyEtXvHFqACWWNpf75K5mXDQLQPQCR3Ec1zlr5bQsEh00JVv8ZhvBaPOFbUkX1nqOeAqfEV2Uc4QM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t0UBSdYT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t0UBSdYT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB1CC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748378993;
	bh=I3eNIMSP1wQUgovr6wAef46gVzuUT98iOwgtKiT4uo0=;
	h=To:Subject:From:Date:From;
	b=t0UBSdYT46X9R0Jy02eL9WVPAG8BI2SsufgiTPBAu6W7nu1wrwShkzhQbe13w3N7s
	 UFhv7/tMB1gfn6/bldMeJDq8x6CtrKIJIydPl09XpyYo7leSvxecKTJ0ps8UqV+Lsr
	 zPr+1PTE9Sc6u/JV68pDSgMGfv0sR6H+B4nqkxO9TINsVvdt8qwVnUi0uGK41rJRZb
	 aovdcAaGTTz3xx04vt+ZFFJIYDKJWQrdM0N1sz6mepRQ5yDMD/lZ1tl22k2SGy9eYs
	 oNKxFvT1KCYcgplyvjFh0pmrrcGcLusRkwNbjv7xvj8egTrX2CjKc0VTnuAVqgGnil
	 e1JWjokYs59/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0FBC5B542
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174837899357.3703.11060799559774356068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc420460ca6748ff972b287981aa42fbda3824306c3bee9a7828227dbbe96be4
Date: Tue, 27 May 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748378993
