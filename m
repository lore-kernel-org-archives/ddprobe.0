Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ED7B610D
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743933594; cv=none; b=dg0WzvrNcz6h32SQEAQ2MK6Jreis6ZuHZJgjbxwoBhNIbAf+3Nl8HXnBY9pkJFSm3mYBF9HMZKwJcQkuN4yNs4/J83btp5R+ZGwGeNTIjX/L+s/z3Ut27hFq979OMclpMW9fQR2zEfTnOiHypv/B3och0wRjl18IXDBl6tH9pTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743933594; c=relaxed/simple;
	bh=yBYodkJPGHUy4XDmbejRv0d147+67/1A11a5zFfqrpQ=;
	h=To:Subject:From:Message-Id:Date; b=kXGhFRoz+HldVey5X56zQX32VShLBfjnxA+Ql2QDAz/n1azXk8M0HT/zqquhlZp2HgWXHUxtWLEYnth6IM3C/QaS5bL3l/gIqr0A589nKOmWNmTvfysbgKyumdC0HcuZ544aLYP/AI6ggaKkXUCqoqCpRI/XFdjkRKyh51eIIw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KE2YXMNp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KE2YXMNp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCB38C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743933593;
	bh=yBYodkJPGHUy4XDmbejRv0d147+67/1A11a5zFfqrpQ=;
	h=To:Subject:From:Date:From;
	b=KE2YXMNp1MlObznb0N9pizOVZB47b2D7sTi/PtOBaa0VM+o18Jb7MOAiz4d2ZcJGy
	 NThs/qmlJ5Zuj+bILOEO6LDHHki7uH4DKanT2aLOi4ZMWX0nABoZ4rnwBHAm0Itqtd
	 TQ7WgxDitnps+cTDe20xD1QNJzzCij51r/imtasTjwWchF+/GKM4sfJfUxuAwJr3vp
	 KNKxjxaoIsCF4UQ0RU+5pf/d5K8QQVy2XDFfNeZhYphqeL4mWpzihq4u1Ihi0iMkiL
	 17nnllMPumKvqyQthChKo5Nrt/VNt0qmcvSGSaOTyflqBhGKmwjB09QGvkKF1VJP4E
	 vFAtPxdlRXmqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7EB3C3600C
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174393359364.7790.16503565752181050537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45365e7742e291fc3211586500c32607b03d272cd4269bf32dd58b6cee27df7a
Date: Sun, 06 Apr 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743933593
