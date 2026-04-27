Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 189BF314D26
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 08:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777278454; cv=none; b=GdUmF9D5W060YTkyY2eka+myl4scGRU5vooSqCRETiSyotxJi3S8z3iMcNYLz5dpmIx3puhePsFTgCrzvgLDoQWuIRiiXeKvQmzIYlh9rsuDzZ4wDmO07w+R+pvPdhde+CtepZSTy/oi43RWO9yTeczd3d1Yo6q8z3/Yk9ZZYjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777278454; c=relaxed/simple;
	bh=i4aaEbJJrCVfR866cpV9YfOInoTR5+H0qSuwKFSZoDE=;
	h=To:Subject:From:Message-Id:Date; b=Ts7M8d9iVBp0TfHCcOqfXOWUFUbZyNMJxPj+SpGeIBxH9tlQ4/8jRD5svSoym/BHrff7FuJ/WbGJoePxMZPynnOHBGviRZBlWdo9A4pChSaKhV6mahl+9C1cJuwGn1xZqsLi3R4FjhsFOeCdAp1gsFoIp0biJPsEXl9GfZAZW/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L8eI5mjI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L8eI5mjI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B81AAC19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 08:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777278453;
	bh=i4aaEbJJrCVfR866cpV9YfOInoTR5+H0qSuwKFSZoDE=;
	h=To:Subject:From:Date:From;
	b=L8eI5mjIGhDM49qeE7YlVYgn/i3aV9YaFjOOOQGpMOpK5iZij0iooziWWb8r8ZXuv
	 WUXcdz7tA9EGxOdNdDUjkBHisnfjLdUccrB9mSliJ4oidaITIS3x6MBRfr8tpsHVFR
	 X1a/LNvN+1EhkXg266mvO8nPEVpP3iX15TZjTXjuS0FOHgm4EWUEBmtgwDoKPFH+AA
	 n+iofmMlsiSYBMAkICF8LV2u6eUAy6FDESt9+rLjU5+5RX7gU9ds0bSxHRWhG1Z4Eb
	 3zP6gByBole5Bv7CdDqeUCjZd0hBRtxnPba2MqBN/DcMnl5qDKLr3mg3egsLvj7c3x
	 zDUtSLSaVXpeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A94DEFF8862
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 08:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177727845368.25348.4082481647576154361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 857f635b78ecd2a71ecb09787cfb57834c41c07150195478a9096de98d8ce273
Date: Mon, 27 Apr 2026 08:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777278453
