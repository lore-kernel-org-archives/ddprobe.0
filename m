Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB4E31DA3D
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747562993; cv=none; b=dAzU0bPC8qqNhwOWgf0Vwo0VVt0JYamXxGvIYsQ6gwaJGupXWa1nvR5D7xyLPxdWeqY4VzJ/PyUTcqFdCnwZmqMv2w7qRTMvmkCOj6URAJcbM2y9E5Eezo6gRwcYku/y5cYB5xuDUfTu7NC3A4MbmtwpnYK80j3hvj6Y9UvLGWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747562993; c=relaxed/simple;
	bh=XQx+WrZYHoGauYxHy65ThPVjhFwfsojj/Wk9sH4BndE=;
	h=To:Subject:From:Message-Id:Date; b=gTBe6h4lJxANkXodnWFkGjHHqInV/q6Mtw3Ao+rnobizS9UzHPoXHflKbqDbRxq+u8gCofr5o9eHFaxRPa4vPQSwBurtBcwu85/jVMgIKb7x/PZorN/fXQPQeKiTqBE5EGej0chbrVJCb4WENsq8r9W6gAITGFpgdcPLIN5icWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QGzD8xju; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QGzD8xju"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A87DAC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747562993;
	bh=XQx+WrZYHoGauYxHy65ThPVjhFwfsojj/Wk9sH4BndE=;
	h=To:Subject:From:Date:From;
	b=QGzD8xjuoC1+4VVHHo8/dRTtBoM0bGxCPpbxxWMUiy4VMsCPi9SLrbUxLCHiXEWip
	 SrOIwi0uvQogc4ADDpvkEBmhMoDpDfhWq9stHcBC/AINBVQyK9pTznwXuPM9NNhG9q
	 ntj/TM6SqiT2RJIvnXHDjrNqG3zaaIFc7xf39CWOgDmfAhu8vdeztp2wxpGmzvFJC8
	 XEqYrMPVFUm42zrEY5e48Vak8kD3XEmd7AIdXIlNijPjxdkZXtxo7ppGiq7JXB9hYL
	 Dw6qYpWf70V/6CzP2i/ii8u0i85VAS8qLg2lIQ4prvz2qn1d9vrvrDZWUoqbCf483L
	 9F0/hovMq115A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EA8C3ABD8
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174756299357.18849.9240483904667388943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dccbd0b183def1dcff7cee09d7129b887a079e44e87b4001abd449b601c07e78
Date: Sun, 18 May 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747562993
