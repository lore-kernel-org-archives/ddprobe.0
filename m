Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5175E1E502
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743975594; cv=none; b=HuUqbFamJhKhkNP7UeWomtfv1qZzgNlRHlcTP+rj2GfqmxxEfJwb0mnrG3EYGcKZvUSPQT+3ZkSnys4hPY6DFjIE4F6jpyTTjcxUrgzKGSvon8pXmyBZLqcQyKIfxoEhqk6grsBJDVxXTo0R++ynhlAu/pKP4vbZgjVmb1GJTfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743975594; c=relaxed/simple;
	bh=Ul/2vGuauCWO3nPoq3IYiAennWDbfZOPQ7xTric/0uY=;
	h=To:Subject:From:Message-Id:Date; b=HkfFHyVWSfuutmMyiT0Uu3VjCGaqxCAOXzrJ10FY/KsHgw+i7lVq9Ax3HDqhiqHXQYuqrYOOOvMCv2FUw5zWmCrZdprfA+P6Lbl5K2DXLbKH8uYm2fM/bhN9sX198bHRyqJcBLnZ0TbFHC/mCyjN9x7sZrxQ+uLPpCAmBQDx8og=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N8xsSUDB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N8xsSUDB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5A7AC4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743975593;
	bh=Ul/2vGuauCWO3nPoq3IYiAennWDbfZOPQ7xTric/0uY=;
	h=To:Subject:From:Date:From;
	b=N8xsSUDBGBgyWkG6ChgwM1rgWiIvtDiwLqI/7CMXqS8uvGcgsXgdXvATO4yTUv01v
	 gX7fXzXXEDtA65vXU8Y7kPFuQqkpOy7jdLni5yO0YtpnY//HbbDLzs/Td7OKWAb6GF
	 aGLmV/I2Scdpcb22KzSgmKrDWWFpvnZhnO22bjhABL2ZtkDj+qrRH6IMDc5sVR+RmR
	 DXR0cG3SUhR9qpurJey3ggYRDgRWZBFs/YBscu6SlbKvYF7+DTGcFM5sO70LINuQBR
	 E7ynBKQFiL6JgsCR8sJu9Wv/8KkDgVv6XKTlbbjCnOLeG4QF1chqbnOjf//0toL+y/
	 4MfRM8EWR9SeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E0F5C36002
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174397559361.10796.14443130125262360486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 512dbdb18205e01cbd3a2f3d3022de5a5f0ed915f18ca17187362344c3abefce
Date: Sun, 06 Apr 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743975593
