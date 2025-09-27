Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3137B21255B
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758986994; cv=none; b=jBxmhEMKt5HsPVqpUYyhaJmD7vgaLNL8y38jMNl0pzFO6UMBFGvnIloFzsotzNvP0PVBuGZumJkmz2DIRnxtaH4o7mg5ZSGFs9BsrR+0M+D0s6aqcX60v6ryzWMRZHJrO0Ask15nqLaoGhuvINqgU+4qGj5leVpzRRWAbBb+p8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758986994; c=relaxed/simple;
	bh=+F7V03mRwnhuZEc1f1cOdZBCvBYt4yzIYmeX2Mcqr9g=;
	h=To:Subject:From:Message-Id:Date; b=fqDEltUrYbSNFY/WxKaQXw6L4z1exq9rtWjOWc7cxgZCbnNkDF9PZiw0k4pp2o63Y9Cn4PtQ/q/Le5CrquMxp0FdpiN/t3aavJbXZYGahDnso2xC6vqP2wk/hyTSZEy3me/AWKEcyjEhd1PSK/lIlrpKYhKxQFiadTbZ0i8INsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DXXoj+7g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DXXoj+7g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A973FC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758986993;
	bh=+F7V03mRwnhuZEc1f1cOdZBCvBYt4yzIYmeX2Mcqr9g=;
	h=To:Subject:From:Date:From;
	b=DXXoj+7gIGe/t3lilqUVeRo8Zn6Hs9xQuXMZ/HWiH0Zp5kv6CXErYo2mqes+e1Zwb
	 Rh8CDsPDE2o/J/0DWkLq3YhJC0tRqXWMjGyyxyNmQS4mzpg1JcYhRz9xPb+dlsFiG/
	 m7WbLDHIoRCtda0NDC0WsAEzcBQBPVvkrE46WbH+9lOIoM9+G04LZzfpwScukoHgZE
	 z42MAH2T48YxSr4lmUEaYXjlXt0E323y1lZsd7E9aasCE768LAUdLNO7sTdY60MlFc
	 h3scAm/QiSfRz+CRAsFBN2s6kO0Y367gU9WDvkAT+Z2bCcT6bOpj5lcyi0nnQt+24I
	 gJ8mfJqzVzk2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A1BCAC5B8
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175898699360.26603.7943575255147202787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18ff424dfc53466d2502f3d2d59452da804add3daa009702755475de2124b7ea
Date: Sat, 27 Sep 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758986993
