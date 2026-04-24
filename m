Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D979034EEE1
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 14:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777041453; cv=none; b=KgfMBpu9z/OskKGL9gQrzfiaSSivPbDsi1Nz2/VlzG1JTW62sziXI9npc3/gJO8eBzI29Le9UfTFgYXEzoylzzar42bA3bwBGMi1L5c7TTlriRXAQ0bC3ZB7JgDc8ouzJYTBrtE73EyyhkGn/qCzbToz0NmjbrUco5p9NV1YtJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777041453; c=relaxed/simple;
	bh=OuaR1+H/kmBAr7YHSmtLOzdQII3WNn8OAb92PF8GN/M=;
	h=To:Subject:From:Message-Id:Date; b=IfV5hS3eoShb/lemfXLTv3p2FGt+NXGYzz3ugKe8yQHNhzuJkcX7WgaHfrSdRQNlO5o9XGibI4D/fXQl1OlX+7T/+/f4AvxgXn4+z/aftIxWFjqyLY9ZMQkZsOeRuDO/+M+qebmOL79ohkYOlpXdBmnH3aCZ9rEQ5gxVRoRYBQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lrhnjk8Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lrhnjk8Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6B39C2BCB2
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 14:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777041453;
	bh=OuaR1+H/kmBAr7YHSmtLOzdQII3WNn8OAb92PF8GN/M=;
	h=To:Subject:From:Date:From;
	b=lrhnjk8ZTBt6j4qqN/pi8Qb5Eb79JGdPesI7Wil6mGEgJUgHl/H8RPBc8rZ0eF0o9
	 0fgd3hiNZEQGdimS8w0s6sraEucuOG1WKX7C+Wf0AR3fmGX57b3gjXbU6fbxBmseLn
	 6w9yCBtN6xE3744CHVz2z0gfg7jhhAGD8dSqscSPURicmz7//SxM+YiNaO3Lizne5q
	 wEqXd4p+PQmpvQfIzCdcmxAtYugJ/VenObG2luAHZNX/kii9iJXbOmok8tm9xiXHDS
	 WtZp3MyuVhyFp1zdy+Cph3nUSceMtffZedaKVChnD3Ao2wBCqv+wabmguxrg0jDt0E
	 Chugo5di8hk5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8EF7FED3CC
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 14:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177704145368.22518.6807086664985712002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e54af342856d3f2c911d338c056824ac8c1185e86b641aeeec4f12bcc645924
Date: Fri, 24 Apr 2026 14:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777041453
