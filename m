Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12B9138A28F
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 18:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774375494; cv=none; b=T7q9U21TJm6xjWv12PpwWre6FuZnjoJ9iHexXPi38cdLdnYIHXHyVGjAo/UAbFZ4K415/VHKEN7DuuOcAIWqfP9N8lfaKfX0NXskNRtFXWJlHBBtA1Xh6kwxWFIvssQwd6Ciet201srtpyti2fLkADh7HrtSbOufTsTffX4UPYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774375494; c=relaxed/simple;
	bh=ZkVTTKSyLY4eZ/6hMqmJOGru8bf8Is+ckhhpEcAhQfo=;
	h=To:Subject:From:Message-Id:Date; b=iCA1Z0vlkhqdHc9T7KWy9EhdAvAQztbFFCj4A4z7AgxtjpXMhVj7N3opn1u7WgSDlIkgxJCO4qRuP1gRwrGwqBAN+zE/asK+WQiAC5FE9h4xSuPkewlD8ge07yPQZ15C3nhk1Nn+kL00EppKCUKQFXDz4Q8bGCiJPlx8rOGGJ5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B1cKXAuP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B1cKXAuP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFA07C2BC87
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 18:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774375493;
	bh=ZkVTTKSyLY4eZ/6hMqmJOGru8bf8Is+ckhhpEcAhQfo=;
	h=To:Subject:From:Date:From;
	b=B1cKXAuP22kpTnFb+TAruja7L3arlKiwrw78/pODRntswuU67g6Wy1cnt0eBH9P66
	 9S2qrSpfv15WCiPk7qQXoX75mnV9Eqndg876uIKuLh42xBPysCaMGOlkas5TNUq3nt
	 xMQ/QdiZLCEq0hhmIv1S7tdLINrOe2eO8N0/3oYvgHIbxXq88mgMB1ZC9EPx+XKv7Z
	 TtDfDkdvsd4JSIkfE9NdC73Vy+yhsHIVeHDIWDgi9FjB+s2EY74uI49gNtEYQnKbdU
	 y2Yl6GDHEHsmzJcSWUUnkDZlbyB/45DYPi2Q0HF0HIiiPobepmSR4tTDAzDe/G25qJ
	 DeoJ7Zef2kR5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C4E9FEC0EC
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 18:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177437549362.14734.5740457351695467125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f16c7fd44ab347b50a91b066c55cfbc5d6b04721bc997e87766840f002cc320e
Date: Tue, 24 Mar 2026 18:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774375493
