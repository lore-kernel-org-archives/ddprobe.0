Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19FEF4A28
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754272794; cv=none; b=hLW34cbwUvNDPCiee2DoCNh5W3BETkuwvV+cJ0RUrIBYi+b0Dva0oobgmaNoqWyQ37ueKH8dZC/XdL8z49hCea81g0b7XncCnyYRDHIvJKLGe2cSLvRYf3ZsyX1CsH7Fb1lX0ynBxv1Xr0w1ENFh//1Prw/iRNtdL1QkpSQ5d/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754272794; c=relaxed/simple;
	bh=aRQ7gwEs/E+AyzlbQjO3vAPI8k0CSZG3w2FPvQAL3AA=;
	h=To:Subject:From:Message-Id:Date; b=qKhPSuHhIJ1G0epR/Bbttk1CWIFrqTALTrVfwyXKi6SNIk6psBs+iVHKuSQ/I8kd+KX49m+ogA/8q2sDz1hbb2OjpZsVKfaRPmlIWm46fXwBNpse3tTVHiTnmCvuqEjWu1FP00WAQokSxYUv1m1WmjFw61nS6gXaHJM6i1vHLgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ashdZPMq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ashdZPMq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0492C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754272793;
	bh=aRQ7gwEs/E+AyzlbQjO3vAPI8k0CSZG3w2FPvQAL3AA=;
	h=To:Subject:From:Date:From;
	b=ashdZPMqOWOqEjyZqfNHVFl9eKs7S60T3jxdZqa/suwaDNHRB60CbnmC+RoBgOC50
	 g9PJuMZtY0CzCyo6DXRwZsm5j2jms2A4AhuGYk+mGdG0gVt2+m14KxSymV3rbmCwrw
	 3lVpPp20JCHK847/qXyhdX1lVjRevpO1oGeiZS68toTx9W/lgRlUCY9sAx2RTSPebF
	 kJZMuh6JSDQiVY1fgVHz9P7V2qz60md65lJKOpcLjYDeu7dRRuOBYqI7N4PLvR9xKz
	 /MxRfrg+tmAe6X+AX0fTMWyXCWLh5zBRBA/I+yvd9dzW1Qqc27zYLgBdYz0YLjDaHS
	 TGOkeLhVtR6Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E3CAC87FCB
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175427279357.16479.3367844782558190680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76247a0adcdfe30e94835d456417d71770aef5b596a4102ad6ff1545358bee8f
Date: Mon, 04 Aug 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754272793
