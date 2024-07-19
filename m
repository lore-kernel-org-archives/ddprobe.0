Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 118D92AEE3
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721372754; cv=none; b=OpaHUi3SIqxA/I3qSeJE/tEZAcbt7/ocWNrZqo3Js6LqWUiPR9mJHNykstGbC/irKuPr7L/SM0GeKxgT2+/alpqHlns/KysCLghK520P73DeOH/xmWI1Mqx3CxbuDJgcSYRbql55gQzZ3VetRz6qFiVOYG2CamO0b+QJoU0k1Dg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721372754; c=relaxed/simple;
	bh=+0GYiafIs9jy6w7LSXN5fgIpTV8sc0gpn82KzBCOH6U=;
	h=To:Subject:From:Message-Id:Date; b=JPkUFaO+SMBOb4Z2chmrjX2IqOnZCx7jsXaOaPUCVNNsOzxcxYYbBxO7Y3/Tg/mpXFSj3Z6mEJpS2mUlipxssj12RxnGGWasWsF3qA7AdMTJneHFfYnid5d+89LIczvLGBslQEoxWWXByr/lQ4zhWKc8Jo5gIxyjrt+yJisTYEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AV7pv4B9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AV7pv4B9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5ED1C32782
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721372753;
	bh=+0GYiafIs9jy6w7LSXN5fgIpTV8sc0gpn82KzBCOH6U=;
	h=To:Subject:From:Date:From;
	b=AV7pv4B9AxHe6ni3DpfZ11/K7qmyI6Da+SttD5DbuP34VVMSMQoJkDUj+sQy3WsF7
	 P35OPItJlXrI4BU/O0K4BGNGjiW1vYxxL3Zy2GUrli49HcdH7OskVCE2E2hs1kSHNG
	 u1YxuRFQdF6O9P93P/tBX0WygXcc37QwmZayV6FQwXi9N1dnEXSc3KLXd6DfZP4llE
	 wrR8DTDyIpF+0mbGyNemRPQkFSWQTMrr3y7ZEoa1E+4/k8Eiahd09CKG0BJ5H3a9b4
	 bop01xn8sGCpRLUCLHLmiVBTPmzTPnujwE8UFiwCTMDRd1SFODWuFiXKI5jdLGLGng
	 9w3BW/GBEoV8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9253EC3DA59
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172137275359.16399.569827469437555430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe165c911536edea8896c8558d2c976803dc91ac0e6da2c81ed41a87e1cbc292
Date: Fri, 19 Jul 2024 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721372753
