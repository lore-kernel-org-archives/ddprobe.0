Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 612613D994
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 22:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781993794; cv=none; b=dqIYCjSBLq1KhzCE+ud99eh3mx0NVzSlS3GDSUZBEN9hCfwDh63xE4oFf0cQMKY6c2CfrrRKZudZZuou6XFjJvGvQEd/SM7bMzRdTABCWkg5HYRTpVpToeCAVJL2vEfCSDhHFUAKj4x0itv0XZ5Pe2ZdWJ0719+5vxIpMkt8Ea4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781993794; c=relaxed/simple;
	bh=kIcRfZuaANedUlQZe5iurDI6v2stLAuZuquK5Av57/Y=;
	h=To:Subject:From:Message-Id:Date; b=VOCx3NPONcJTiJX6deCwEv4q6stxEHpUHD5cfoY5lmFHaRg2xNSm/mWNSKJrfNjYXeS7IbER+kEb4Hrs9sHdqlUj452M0YoZjpcc4PubhfBSmj1dFMw26Zm3qfGRv1XCJ8xo402rUodqhNiiJ3+WuoHQuddgA696nnvvwJOrIbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DpwRcO3W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DpwRcO3W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D54E8C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 22:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781993793;
	bh=kIcRfZuaANedUlQZe5iurDI6v2stLAuZuquK5Av57/Y=;
	h=To:Subject:From:Date:From;
	b=DpwRcO3WupIcjaWELKIS2EFY2M/I/zbfh3byN4VXbL6WlQ9/tVngrS+FqEHafaSBR
	 +/z+7B4alx9eq+qC32b0BgjRw2yblFW8NcrSsASRJMBUZnONxajHNGsD5t0FaHpB7p
	 I151H1eHxCRK9v92OlnNIacwpK+ndoN0wZaah6NVnU/pDm9ERk/wtsM64G/7AAbGIf
	 WnnSOUWxE+VtRspBkKlTJPNzdFzJuo/UKNOd7b7bwoWdJOjdmyI98Lqgj482ODBktz
	 510Eyt/Hmi7+W5lvBf45lOG+f7937YQoHKACqxor2O4Hud8NVBdTSomAbUqHJ5wqiT
	 fiz24x1SNEQng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B261CCD4F26
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 22:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178199379370.11991.15384917116892634222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36856114b008ffb900854e9c6a965f560c890ed7fb7c6bdb92598e4df7e60e3c
Date: Sat, 20 Jun 2026 22:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781993793
