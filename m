Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33A9A6CDCE
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 10:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714992743; cv=none; b=SI9YDYA8q6bUIA+e+f4Grnkk2+BKQM1bl0nnv0vG89zpD2O/FJNB0YHwaKO2AtVbdkGp3bxVhMyYcAfjpxnQBLNopNAjYNImQrIGlvmf4+GZM4N3lrQMl9hDK9R8z2odhR//hkUOzxEWkzEG18GXoRraEiTOdqUl9eeuHoXtXWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714992743; c=relaxed/simple;
	bh=LgvyiBjX3K6hHos4PIKxx7pTEwROyQJHFZ9c6hDnmuU=;
	h=To:Subject:From:Message-Id:Date; b=JktuHnhR0XhL+l9cnxvsQ923TW6BzXn1PQPiBQpQXhui/ED9GnhtAYX5s4CB75kdGGv6RHgRIrZDxOKGEYjVTZxUMideXtunHjBpozuRx3HLBPnOB2JdAsUixgidK2CaQ0rQ6eOy7RZlKWw/QoAvzYwbtD78oBi4lfzlQ1Ih3Yo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D9D0qfVG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D9D0qfVG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0F94C116B1
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 10:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714992742;
	bh=LgvyiBjX3K6hHos4PIKxx7pTEwROyQJHFZ9c6hDnmuU=;
	h=To:Subject:From:Date:From;
	b=D9D0qfVGDBgqSPgOv2XEqOlEQO24XBTSZcFmTWxrFl4CjDQHLigj3eXNt9mIeCY9/
	 B8iVoeKSEgOchjMsCuFcJjd2UCybGGN59H37pbkAs82BBco8q23gmHBorGfIHPkgef
	 jW9x26P6KP14UIU4BFNjfQUyzEQxAdGiC4QHwOq3eetrX8dQiHFxpGWMDbPsI5swd1
	 U+PuEwevs3kv4b4YZfqOSrY4uzP3IxMqgvTzdVJUkMVJMvDp4yKdtBjE1JG7E/Fxcg
	 VBe/P1cQcP+BU5IRicmTiRPQh5wg+9U2ByLhKLswKvcdKMrVGuqhQsG3zuoS6b7Dha
	 0kDw8wkZ0cp3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB5B8C10F16
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 10:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171499274276.553.13037256961597413031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90349aa2f91f64500a34f6f93476dd98c3c6c937f28c87b25b892111bddc1934
Date: Mon, 06 May 2024 10:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714992742
