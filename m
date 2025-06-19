Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3339221D3E4
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750329594; cv=none; b=PNUiSLzKItbu19XQZHoKoXtdecCQLBJQ/hQpvnlpgGz0j6gSkQODMXmJcOjf0dUMcHeKJFUz+Dj7d3fDLrauUZuCVt9LEZdWeRamMzGkIg3oH6Io6BlzCOWpJCmlLi9xDIu/bNo8OA5yRyL6I5XSO6bMpWLH8NQAJWRfRL4yC3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750329594; c=relaxed/simple;
	bh=njE210jPugvr5XkiNY9QOzi4e+hh+jtBrIzG8uahaz8=;
	h=To:Subject:From:Message-Id:Date; b=mgmkRilfDAboVZSxgK2Qh4kQQhQ/YmoYS1i57rG9J1atLfRQOi1oYX//1+kuvu6GGBfPOK45VZbuHSbJgSi6Hl2mo5BpI7uhn+6ZkUBOKN5ei4b90IYSfzds0tZhTIXG5kO2R7U6MirsJRbnyX7zzqM8qFtpiGzTC5hBoyM8SHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FwYIcyr4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FwYIcyr4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F2E3C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750329593;
	bh=njE210jPugvr5XkiNY9QOzi4e+hh+jtBrIzG8uahaz8=;
	h=To:Subject:From:Date:From;
	b=FwYIcyr4wK2DWVQbUezW0MILI/h/0xBCjj4rYRtWoPS8MIxoUmhYOIi5Ysy5VEV2j
	 q2mqbREuX+dyMshe2Xb1Bpd5ovA/sCPRPbb02ulASDYXmbnPhBTsq0uMhpz+xDMump
	 4FH6aFNKootstzs3C1R2L4/UR3LIja4rjwsNQl2gQ8pTOsFoR9KV5Nw79Dy9XMMSHm
	 yH84IMXcUGOuz4O/PKrpBa8MDj/DnkevE3mXK/zod+R217Shy08CPsxKMQBTCbLmWr
	 iOPfb+eTJYukMCg2lrMVsHjk//n0TxXn/WSDIY6BykHEiEq0neJYx3m3UKz7fziqL7
	 tzHnpt+y4agnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9E1C7115A
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175032959357.13447.16542364833160170820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b22f0ac3898524723d70fd6fd0eda1fecba261873eb73904945c22e0e1f05f4
Date: Thu, 19 Jun 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750329593
