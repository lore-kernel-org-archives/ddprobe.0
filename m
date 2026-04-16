Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C5D52D8DCA
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 18:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776363454; cv=none; b=Qhu8unq7OvSeEN4ILg7UDcIsqiaAhGRzAjCGBrOqgQ80Wm9w/LncQO66DyDZAHnmjUobZTDjIIi4uRn8LW2wgqKlzHjDkkFySxOUfLZvExuqBOJ9P4rMC6lzvpXGhMYUPbT2O8FC4rYKJt/YuWj3lt/RmUjIo6r8u6qEBGTEzkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776363454; c=relaxed/simple;
	bh=4n1KxANtcFxeUiBAV8csShk2x/QNwld6JTnldEywEEo=;
	h=To:Subject:From:Message-Id:Date; b=jbC0uUpQBMbi1wRBw1wsR4JAf795/Wat+vN9PvV89IrckJGxHoSsplPn4QkS+H+yG5IhlMS13kYDzvjQx1nz99zFzXgJ7xV6K/GUOSX294mYI47sVlCbrw1I+ez06T+zzpli83eN4nZC2SYZivZa3ndOVnt230N8tWh2NpD1HaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KgLnK01J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KgLnK01J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDD66C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 18:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776363453;
	bh=4n1KxANtcFxeUiBAV8csShk2x/QNwld6JTnldEywEEo=;
	h=To:Subject:From:Date:From;
	b=KgLnK01JeJR8IIdoKOt3Fi7p6VdNdOHu0HKWD29Zd1SgLZpShu5EJYOECcgG5uHjY
	 8DFLwBUihpu8bMWUqKzZ5sVixihbYgni3fS9jkFue10YxygmLq+9K+4wlG6xtpy+Vn
	 Dsz/jB5kO/Q4MD2XSYf4UAImyKd0Yg6KyWUQZvSFaCrCzehXjXQ5ehHjgco7MKmqEV
	 E5DMnqz2GX5/HYxM+zpzKXEYNtmz6hYpVRV7gRdo7QjyznUfCqkeQ9xrUnFi6vFJfB
	 8CJyJxFF/oyD5AaJMhYq7LDErJhkfkFyr0+HODOoFngChlSoAN+nyP19uSXx32emmg
	 TGbEpcFHQ7a9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB358F8D765
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 18:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177636345369.6821.8828821695107264546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b77e768db793dcaf98c9f4040a5acf70229b74bf2147c72217c62417a9fcdbe8
Date: Thu, 16 Apr 2026 18:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776363453
