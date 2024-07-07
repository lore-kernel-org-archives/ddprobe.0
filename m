Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D29B4C9F
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 04:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720326983; cv=none; b=XW6SlTi8aVHC0ckeDd+1ABB+f7k+0yFVyRLtKBOAiJE3ht2AbNwscwP28l/vGfa8LAatjBbqCD9Zxl8Wjr96KEMbJnn/OEBlCgA5bvVwucI4fSqZKBzfq6RAAk3JsBOzLw3qK8Qf1MahU8uc+N9U8Zf6kgjeAI1ATWrVsV/RnIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720326983; c=relaxed/simple;
	bh=OdEoxDb7nAzbmwehoUeD7GhrWmQjNIpOqfPEy1YgLpE=;
	h=To:Subject:From:Message-Id:Date; b=g5GjsPQwnj1xud5JfhDhZubB7UxKcDZBUbNPMupT66lwUPiztytIXh/jtMhPXyysmX/F2XkKdO42y3P820xWBzaWhXXpTUXHjIbkXbFKid58PdeAaO2cIb0gQTdtpXAGNS5oS+sLb230lL2L7dx7MHXvP+Num6h+qIDirrjWJqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WJaJfoKx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WJaJfoKx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFF81C32781
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 04:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720326982;
	bh=OdEoxDb7nAzbmwehoUeD7GhrWmQjNIpOqfPEy1YgLpE=;
	h=To:Subject:From:Date:From;
	b=WJaJfoKxfqfagdt5XhIfFfCa4D1g8oFe9xtKxVdEmVez6ixLoeunU4v+AsHGTpz+q
	 iNUxUfwpgFohy4OzpyJVNCTup4tn9TlMUZ21+r03SJFBRQUSjt6DmWGHcPGzYxSbMN
	 xCNXo8zV8MaF2rD+Fy9tpWZVnZfSQjwWAFGaAWWBeQ2RT5Sj/BR9vmuVw3dH7nWd/c
	 HqcZRt8xePH++CIu69GtatWLRJyHoDr3gGGkpactgGgoTQRcO0XFtylM7hoz8tfraH
	 iOrY7BNLEdMsg3Tya91q/PBEzUbjMY2htufBB6HC9E527pDuFoS9gTbuEtUSoowZb9
	 vGMGWEGHNrw4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAFAAC30653
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 04:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172032698280.29197.17185293648501970489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 601a082b310cafaae130d48faac517b3c3548bfb6a67484afa96332493f2b756
Date: Sun, 07 Jul 2024 04:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720326982
