Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4735C43AA1
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751079594; cv=none; b=sLMqK5xR6j7hB7/rAOlshR/Rjtr1hYuk/WXMskHpN77WpSzfk2PwYEYbPURdtD4YnERJpyGbqzcNI1XbJTuMg8ke6d+OCksaSLYEhyg68MnIPfTRlXK2T6UV3FNcAkyf7erxkh6/QsSYZaU9nTbi3gzLlv+b7r7LKvAsBUGpbW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751079594; c=relaxed/simple;
	bh=ctIBXL+RVafB5fPiPE58JZDgdhGdY0tl8fIEjKKpWsM=;
	h=To:Subject:From:Message-Id:Date; b=ZBLB4e2Wc6nuSiy/vCWGPED+Vsr+7Y4iypIvnXVLN+YnddnSMEz7jh5i+VIP4XNBpIxTFxyPw/tGndabovwYYdTnr7yUKsaQG5Y0/awmM4vP6tSNLEvVLskYUDMYiITBFYcMCp8sHXlzyzbtB5yz3+FdRRl0O7MqTjuRTcgp0W0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZiomjPNn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZiomjPNn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4167C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751079593;
	bh=ctIBXL+RVafB5fPiPE58JZDgdhGdY0tl8fIEjKKpWsM=;
	h=To:Subject:From:Date:From;
	b=ZiomjPNnkxviB5BHfsbtWLAsFbM5UGHvqoa/TGo8jjzoHuxKACGwh6QlSs0zeKwFk
	 fYDFGUZhPkthu8i99+h7Wmy/CDxdTWCUaqN8TN32mTtpgI0ERZ0TzdJG3WRUGb8q5h
	 zWmrxU8kc08zuJ9yyfAb3zY0bp3j2amT94uBG6BOkUi8kb4lpuSULPgp9zqgAGn4vW
	 Owe3Dvam1ddXsIasDvjm41q3qaOABWLPOi4CBHgWCLaIZ+qvHhcVOguBwZhTmr416u
	 EWvweBCwA8st71K5xRRaO7bs/FBiel/BjP3V2lWqpyxDSc80JLSrsZDWsQay+orfUt
	 nGEXXEh9akGDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98BADC77B7F
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175107959360.7176.16317163856634675114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01c90214d11cc1eff6f077c41c708562a4c20661ec3e7cfa518a717bd5780cf7
Date: Sat, 28 Jun 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751079593
