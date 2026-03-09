Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1536A21E087
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 03:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773026694; cv=none; b=DQTsHxmRFS3EuoYUc8SlNEOptdk1+m+5eBzQGxHYrI8WADezylpf4MKOOlxTh/gfIt3O96PfwEjkotUhOwrV6/mgMjVxRGwgrjiQj21OPAaYrWRBeXpi+5kmjFWpRE8WklU5W12lioC0+W0BnUiEU3RCgJO5KI92SXfLVsw7k50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773026694; c=relaxed/simple;
	bh=iqq+cH4cW9FIYsfaDQMMF1dXrgjRx0XDkRqNh4o0HHs=;
	h=To:Subject:From:Message-Id:Date; b=FoJo2z9SkXxhxdmvCMcsYCiMFvL/fdJNdRQ+18Mp85pJ45LQPF9KpASRThJ9dG03kQ/Tb0a/pgWOA3I/BTxyBjBYNlte2oexgfHrEz7dMtYJdhpWpRO3fHV6LZiO7777uvB2WQySkQMPh+ucylrVJNsp1CD76WIYdt8+pL/o1yo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dv4D+Q/A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dv4D+Q/A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8EDAC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 03:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773026693;
	bh=iqq+cH4cW9FIYsfaDQMMF1dXrgjRx0XDkRqNh4o0HHs=;
	h=To:Subject:From:Date:From;
	b=Dv4D+Q/AT2MIRWpVsHbi6d7uameiBj3CNg8HaiHFQO3BQBNlEYqC9YbqQUCFN7BoW
	 F4edujHuC4OBVo672ca2koC3dFMv0h6neLh0ciR7k3y9hvXtmXtsoafNv/caYdov4J
	 EUOwsvM2XXtuwG7UBvJlS26K3KkSUroJgwuVqYWCs/fzQx8ajbM3ESewWFxsA0YWyH
	 GY/QM/K/dHmM/UKCDEeitzlZGDEy9mAB75foIiIl1AdEErsDmCJYrukm4sknwSBqpZ
	 +VTTInxhCWXKxLEFzA+e2mpbsGDzuZ0G+wrggpfNSBM1qN2UX2tiWeyG8ZhIWQ+Qpv
	 Jb4MojE8vZp3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931CEEA854A
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 03:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177302669358.27590.8981529566253157979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3e3cd572192279925a4f72456f9a1fe4d24475f82218428a562d401fae2ae89
Date: Mon, 09 Mar 2026 03:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773026693
