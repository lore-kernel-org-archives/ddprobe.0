Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35A8E29408
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746220794; cv=none; b=oQBnRnooe4OlEnEJ6sR7JEvD0oL+6F5hmWsy+vtYXC15j/6jLmVfkEBJX1OHdpzWroqezx4mgPQOgKLwUHqtP34dNLiXqabaclWvStwh5URbb8sluFNSsS/K7ThXC1spdFVC+kdKKaZt+GcP06sDHsy6smErV+XxXZJ2qKO1PkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746220794; c=relaxed/simple;
	bh=apmKzEe5DqigvnSmSq1hLYejJzB1M0Kbg8Q/BP4ufX4=;
	h=To:Subject:From:Message-Id:Date; b=DJNXLihmBAhPyhkx1zLrSCHUpjxV8PnM9eIRHY2BstyDx0QuB54RLaaFptN2lKKwVOlgLPblTaHdVsmtexdOIdp7/45xSVbv7JS+c7ZHBqn2lQJSB17fqCZm8P/EFL1MGlXaWQkraCIqui9caTMHnYUII6mJCggVf7Dza9e7pA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NYyT98aR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NYyT98aR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A224AC4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746220793;
	bh=apmKzEe5DqigvnSmSq1hLYejJzB1M0Kbg8Q/BP4ufX4=;
	h=To:Subject:From:Date:From;
	b=NYyT98aR9xlT2gZpEW4KGvgF97C/ntsAFJyDYkuiiCWUZIN+O4kDKNr46ZCRvZqgt
	 MmOTbw03LwudWIUZFDMkLssQwTpQLkcWZKjCdw+f+6qCEDSaCaTEiS1BbWgXnPreH1
	 zg/YJ/58bdaetCHgm+SM/ZFyL9M1hJechi/RcuJeoYnIeh/B34x3+eIq81JQBbMtNS
	 au4X3jZYABB753rPwU6jxLJuM6L9mcEJ0RtkU24d2hW4B9aWkiFv+qArqE6+OQceaK
	 uyhhbud2WsRhijYvnGQ4GiHOpvtfG5ybuAMR/Tb0ncQPCmv0TUn+Vp8CrSyKinRheD
	 Lm4yTDrfw70OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE0FC3ABAC
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174622079357.29649.1286368475973006740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b38ad4e246df74cc94dea6cc38271b81d7a9b4ada30cbffe6e21684eebe0d491
Date: Fri, 02 May 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746220793
