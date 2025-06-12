Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0DA423A99F
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749727793; cv=none; b=s83G8mxxKJtlhoXwe38EO7beeuIOeK01iK4s8jYzg/o/imqVIiwDkDZEHBsavKe9N9HQssyZFfVvjW80apifwyiQ2NSSOr4C3LmxCEk7zr1Gd4H/EvYJHbG7zpkYCEpBk61VbycvkD0ugFOVht8pJ/nZlk9KlI3XjgBsB0uel2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749727793; c=relaxed/simple;
	bh=KOqDtHHpqJl8JKr0RLhSY6wxRbQTjrLH59p30RM3auo=;
	h=To:Subject:From:Message-Id:Date; b=khDF4upEhkSz9KhHWv2mAZItJjoT+yLOmRTiEdbW7BsVAF+ZDHWUEekGtlb6Rj2CkDmTyFRZqv+3YBcjZWA6+3P7RDaiuLK+wQ0KeVIxdSQpI3/NaxCOQxUu0X8O2NCgga2NQXcT3FRJI9r0rCj4Z0YEtEeP5Bcxntzg5CFWJ28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lBuJiIAh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lBuJiIAh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2009C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749727793;
	bh=KOqDtHHpqJl8JKr0RLhSY6wxRbQTjrLH59p30RM3auo=;
	h=To:Subject:From:Date:From;
	b=lBuJiIAh6PDjvJbHtdFBCya4/SofzNgn2NVuKLh+CHa4hMx3LXflRXE+lL1+buDPS
	 byqwdiaYK5PaS/LqbWywwwRMtTy60Xu3EeG8oarSLdiRGaraA2ZxaIXAXWGcvNxO/e
	 6Od6FB993f/QTr7X/7dtayFpU7B1K36K3ZDCmlcCwzGycEZb82KHthvhZJN2Sq2ffi
	 hwBE3hTYMi7E2ImYqDi384GV7RcWi7Uiqs9aYe/CkW9b1+ypEB3HhO1k317ayh2hb7
	 W4ygZnav/8HkLaIT7Qu36umXCDqbouLDgJYM/UkYfs0PmXz64IjgLmIlt0HGLt7xpZ
	 dqJQJDPWM/heQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EE5C61CE8
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174972779358.14103.5345392722479200691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c377195c72c64af9c2622aa2987f7de9999076f9f2c3262a5617cba56a201c9
Date: Thu, 12 Jun 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749727793
