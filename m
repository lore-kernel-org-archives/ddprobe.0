Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEA8E2749E5
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755260393; cv=none; b=Gt+x/IziHYnE5KUckbdm2BmJWcqXyAzHQo/03CUK35uXHEv285i//eVbV16Hhq72RhKCCFCL1K0RXbiKfY2Qcq0MnplTjZXTcuGxsCgij1zxXb5L+AblSf2g+SkOoEZ2+9JqQ9Y8gusKLeasb/Iil7IN6y4OxiKenoIB4hM4ErY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755260393; c=relaxed/simple;
	bh=+BOObAY3dw+RHVkZdpG89xYsaetcJRInySlep38YBJk=;
	h=To:Subject:From:Message-Id:Date; b=OP+0vNhkmOVT+fXtC5O+bi3Dydcw+9omniAatzlV6P1RLMuW7+E/eTThglB1mfBV4/7PlFrBMelwRfYexWwyNb6cAcm0QCniKZ3T/YV8e6GWrp0o/t8hQ2/Yrl2tYeeogJMVT8ARr3rcK9UaBg16HpPnUhQMTnQZoHcUcjfwz/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QFQtg92F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QFQtg92F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D7DC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755260393;
	bh=+BOObAY3dw+RHVkZdpG89xYsaetcJRInySlep38YBJk=;
	h=To:Subject:From:Date:From;
	b=QFQtg92FPNYcOBxIE5ouCu58wajjxJ+wgbkOUjd57NulB2dl8f0GA13mVB33NFFB6
	 8+vdIEhlvGF741MScgbkbAbSmrsYnikadtXLJx4eI0QGdN8Sp6PW4kpeRPSRb0UTVb
	 GmIuL9I72PQqB657zjznrvybsLED0SZv2kTFHhVuVGAv0cd1kwEbKxzIpzDZeGlR6+
	 lh+P8fQhy7TYu2wsP3RlPjl20KPhstOp9EG5eqIxGJGUjahcpe/z5lOWOewUJPEYUf
	 iXzaJBbEMlwLgQTmcD7uA5iEonOJ8BcTBeBJhAc875EpQDqTsVA7MAr8NTJ57RL+hq
	 1Vb/73Q+DVXrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F446CA0EE4
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175526039358.28781.3501458652412927397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 308e31c94e945964b432e2b55075f741a20f1a4f2da694226823fc21399128aa
Date: Fri, 15 Aug 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755260393
