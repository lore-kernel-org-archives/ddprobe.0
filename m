Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F0F017D896
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728343554; cv=none; b=nOiT9XMfgrcRTW79oiChgpNrSp4AWzqT+sWBxgakOPPdG+3a+NBp9+57qXkAMquZrrS3QEma18JS3TfCS6VuiAikQ6nCOIQY+f/Qpd5A+Qvqr51/XI67DLVUBU8um7W4OMVjLMaFaLPj5wANXHqOdE/xhSewe4KEvrwttq9AkGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728343554; c=relaxed/simple;
	bh=YZm24mzqVVhz6fkmyDRduglJp6eXd8JZugfzimdP0E0=;
	h=To:Subject:From:Message-Id:Date; b=BpRHXEIoosglGG7894pXIoj8ZGpmqd+SLfHEbMvnFS+Mp+Q59ieesSevql3OC2zlZAgpn7ikyykg2bp95i/DnEUeg+2PUVhY2KjSuSvCN5kDUn1BLRv/yd8oBgpvxg1YTVHSrux7fJ0Cjk9Ju2DD0wNKMkNjKz4rq4CU7FKz0s8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LkKPSQhY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LkKPSQhY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BF4C4CEC6
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728343553;
	bh=YZm24mzqVVhz6fkmyDRduglJp6eXd8JZugfzimdP0E0=;
	h=To:Subject:From:Date:From;
	b=LkKPSQhYCnkRiQctpCz7Uxg3l0FHFl1Ze0Cfex59zSk61NhoenxVjQ+6zSRH6maqU
	 2r+38sDsamwkQHJHYquXV5kCeGhYd3Eq96/4LjDRp6SmCr8JriI+MrLz7ZVECW0Kch
	 An5AJWT+1NlJeCET5O8as+eEXPvuhHtMsi9QBMmGO6zW96T/v8UDvIOzDEmURoD+pj
	 Fc2T7hTp0wnFaUeP5k77EjELM0fI/Drz+QA19pl4ePjTv04fiTr5bxquP1tAyc0Zy9
	 8Otu6sGx8IvjC4osjxZnOlPJ44lUI/rV3Sj8xhAX4MNenjg4Kk0AYAIMRm4RiRl3mA
	 hVL2tUAp5t0JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F3ECED24C
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172834355358.19795.14662507795020706168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd65e37580d139e68ffb96be76937bb9dbd896fec251930262c9c0909172b239
Date: Mon, 07 Oct 2024 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728343553
