Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 430863D6F
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748663394; cv=none; b=p3SSFuk1OhcB4Wu7XAneU1PB1SczZUkYOn68nb0jYoGuW/JJjk++gWoMQGfTtXQvOvSxWjvdh5PcAUActL/27Os3k/w/FdJD1qtz9NNzm/odCkPOymQBEoJAtemyAUWhcUwB15Eb5d2qIpYrTILXmWvuJeNFC2o2l+ymLIulPYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748663394; c=relaxed/simple;
	bh=GjvcTZpPUIgH8ZdBgZ+yznhSHoKnIEM0pu5z3pYNNO4=;
	h=To:Subject:From:Message-Id:Date; b=MpMJJ5MAPNwCclfnp9H4oj/2o5S99x51m4kgY70N7YPJFx10zebRKs9xzSznZxFnDNdTq7vl6xKG9mt8NZB6vRvrt1ZNwvtL32hAdv/Elhe+IEOqWFt+AZJ8fTMyR5QpAPBI7g4mQidhqOoGUkrvBZdIzs6lonyK+XfPoGcJV8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nHYs8Z++; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nHYs8Z++"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16B0C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748663393;
	bh=GjvcTZpPUIgH8ZdBgZ+yznhSHoKnIEM0pu5z3pYNNO4=;
	h=To:Subject:From:Date:From;
	b=nHYs8Z++PCICpvlJ2isaSsHRUCTvjMxVVLCMMeZuY9EKtBuHskAJMFT7zn/KecArG
	 Gls3xGBNbZQKmoJ+KNXK1MMIrOpWpYoL8jhkzR1OitbVIM2R0xphS/lQ94FVzouoly
	 3u8RFUFFVnnVMIdXAvMo8ak6gBEZykqVBerXb9m9i+K3Tp1UdT+Pr37OOtx+N8zQkb
	 hYUMrh34SugWOCOP8UFgqI62RnJOYC+Kdjv3vIJleyT25HhJy7O+r+MpimVBfBJFfl
	 PGP83bBNoNTX7FgFg4pvbotOhLAE2Hwg8tXggJr+QN5MA7AT7ethDA/IDH0Sch4lqT
	 DQN0ZPWrTc4Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E79DC5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174866339357.31783.16696136831551396269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e1cf2e6ea61596b1557381b4121641ba705abc1c81c89cdaa489147416ed5ee
Date: Sat, 31 May 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748663393
