Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E308015B130
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 13:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712755697; cv=none; b=Tu5v6quOZvtp5uAt8bHSJsB8AKzvgVtaYOhtPvgK4iR42Lv4wI1OfTO+Akfy1YFxuu/uNoDmoBOYxT41XXm/Eh3B1q8PY/x0c1xPnkCIqvqADkk2HLjMZwsssEB7Azh12Gfyvx781mVBKlUJ5u/fZ6fiFvCSuoLh0/HmTjrcvRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712755697; c=relaxed/simple;
	bh=S37c74CoKzYOa0uvZeLNTRJNnbY1EcQ0pDO0ZgGvCrE=;
	h=To:Subject:From:Message-Id:Date; b=ILxc2zRJU6uyVLBCwlAnmF6yVL0IAHcqLh7OehTd3JzdbKZz35lvYp457+Az0Z9OCisoEh+W2ZmmAJ1Kgi9q+v1b+etQLWTM7ULGzm6i4TQJXWPg8/hfny/A7Tmm8yc/lZmEQ3XvuaZVNnsYJZWG4J1j14e8RxzBcbTF8s7PZ5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ofKGYwxo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ofKGYwxo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B208C433F1
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 13:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712755696;
	bh=S37c74CoKzYOa0uvZeLNTRJNnbY1EcQ0pDO0ZgGvCrE=;
	h=To:Subject:From:Date:From;
	b=ofKGYwxo7ZR6Sd7fbtk3QHVRUhGFStwSJv8BT2o0QkoCTKwIjkAcs0NclT7YoCKSX
	 WjVeUS375ebT95A7iQrAYKUcHcYIDrO0v3shnb8gHwm/K/ORqAoYGV1vjLmrl4Vh12
	 siFoOLqXENlkg+WZV4wPFjKynGhgFBAHQc4MJNLaORedX2B/uwsYJn5OKW3BNW86Tj
	 wDuooOzqu8enPhrt/ifiPeLmb+BgQXjRKKfAB8E4auwSaRU/B72gO7XnmKTqH0NNmz
	 9ysC4lZ2p6XGafy9L2+5Uco/vBpE/jaQs1KiyXB8o0Jx4bXHyizldAr2jhRjn8F4Oc
	 YW1t+4GqJny/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68243CD11C2
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 13:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171275569641.25198.13221270228310530024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10632889f872931842505b464da7632e8f3767f7251ea3378d6a66b2ba993098
Date: Wed, 10 Apr 2024 13:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712755696
