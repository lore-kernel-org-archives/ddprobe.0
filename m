Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 469C520B800
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745174996; cv=none; b=VF62N3jeIeM/KgKCCg88oQt5MTysR2Ejax35auw+Nn+ktjhkijLmBhCdofQxfxCtpWzOuA9hZ0qWZTVRl2Q/vCS1tNH8uc9tc/gG9sWyLefaegF6T+0Tu6fwYLZZq71AIu6gBUqky4gmtDm4GPgTqwgvU9G/HaIUmrfQDxn3mb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745174996; c=relaxed/simple;
	bh=5pVQqCUEEqGEZS4b3Zes4YEXc4PrCVrby1NkmrqD+Nw=;
	h=To:Subject:From:Message-Id:Date; b=WNIie9WrrYxd9vjMpfzsLEFMRGzLglP9xeekTuwJzJLK+JQvcq9vvxj7WpHAJXLo8wCi4K+Lvl727DqcRCKx5AY4j2eNudldRNnj2pIhYtVm+KZOUrhZwDpG0q6eGa0znEksPwHnC+yo408byRwK01mgqG9wobSm6/hfyDh/wN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=haNEwg3I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="haNEwg3I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFF39C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745174993;
	bh=5pVQqCUEEqGEZS4b3Zes4YEXc4PrCVrby1NkmrqD+Nw=;
	h=To:Subject:From:Date:From;
	b=haNEwg3IBWpSpzls0TbaQVx6WTnvWlaPV8MMRE7iskICuGlt0L7ZC60ruYr1Z8fUR
	 Ha2W9qI5j6J2zR7v7JbaZlk7FHZDSclSW6dRye2mxTkPsFoHo6KTbKnL3l4FpJWxlC
	 5ibzzho7d56xjnTQ0GyyNlHJyV9NwOQ85ofB9F5DYX4BqG0ALzG7D5NbTTAYN67RXX
	 118ZmLBH5kyqRGrRJxAgk5lGL8Ee00c7Dp66s9dl1XcHG70MUVxDQ3Vz87x6ehG6nA
	 oL7S6My2jN2AemEBjv+JnfjXJ0HhRWXSL8iB5zAfIcPCr9noOmAZ1sq8VyCz/hrTMG
	 L7Wwys9qWCB5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DAA1C369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174517499361.27551.12728478627773919433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b60a76d93f805d5daf9cf974c60e2ccc11b0b3e78193a46af6f9c3ed0c96c1ff
Date: Sun, 20 Apr 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745174993
