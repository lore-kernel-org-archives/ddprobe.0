Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 587527EF
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 00:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714869743; cv=none; b=n228KtjmyUPuNmDl9ei3des2E3T/3Wy37t1v1QEddcWp0/GC2VO6LmzrB8f4Xf4PpceiZPxPPRHE0KWC0Lvy3PQUlesl8jOEu0CaV1J7wBdmzNWFVR+L3dhkbqgz5mFPKsWFdSuvAWdFRM2aEeaCdtkiiOGVxiPnU4tDbmyqZxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714869743; c=relaxed/simple;
	bh=8wZoBgxHt73Q99W5IS/U2zuEymi5Wau0+Qlo2UIjRAk=;
	h=To:Subject:From:Message-Id:Date; b=mbjoaihNx7qr7MqutwzIeF56Zei0jsULNrK5g7tZpf+ZUIrj+Wj0T3kk3QGiQ0agYc6OWYjo8nXiWGBd6YOZ5XUr2nnwL6rx29WbVE8xQcOCnCOkbv+GEcLqpPSZ27GoqrbkjVpeGW1ivQ9grMzAntx3eVNmgxWEclr1RQA9034=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TQ2K1p8E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TQ2K1p8E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D68CCC072AA
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 00:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714869742;
	bh=8wZoBgxHt73Q99W5IS/U2zuEymi5Wau0+Qlo2UIjRAk=;
	h=To:Subject:From:Date:From;
	b=TQ2K1p8EyBG1ElcYy9bhiII62SQs1JV7oHqMRY5r9/BtKXeSeV4SnHH1HVrpWGW7J
	 HZ0yaS7LXPnj6vDAki6OMxfnPUA5JpLGTryxyHYSB5eB0x4zQcAHwf3LjNedL3J+SA
	 2x/MAoTRZPBYrKOvnMwSEnVoXq6CMPb/xDA7WkZgrR2JJba2ORmwnbCfk9mcFOPnxW
	 OhO/d+cSHCH5StsJLd1OIQWjF4FZ8ilwN1esXMZJkvlITAk7VQ1eBYaJY5OVWprOB9
	 Kbh6KBwD+gblhgKjDh3OQoX3EeghI6PfrVaJjblj8G2uodl9CR5Tyk/eXmbyntzN8P
	 UAKpOpcYnzxog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF232C4345F
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 00:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171486974276.17533.11113006811966460559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6bf0a1742b89ef62d2ab70e533d5bf488f1f9c1e59988b6529e79114f1d7a2b
Date: Sun, 05 May 2024 00:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714869742
