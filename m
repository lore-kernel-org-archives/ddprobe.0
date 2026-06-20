Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E64A40D57C
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 19:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781982394; cv=none; b=IZV8QlnGMZwRWM1DjkDSTyJbvwtvxUFFdzgAlO7h6XhAUQaJ0WNt6DoBAcVkS+H1Nt2m8FsIy9eQTAeG7sSRnmoy2dUl/cKJVeDa6FpBNjAxrEycMC3k1UkTfgSLSHdeQvFOrP31oGlWt4Mp64DN/Aqr6KFaIZyJIHzheZqqciQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781982394; c=relaxed/simple;
	bh=Devcxz8f+JZXA0w6CwxZSHtBQWWJdaeRhS5dr/cEkbk=;
	h=To:Subject:From:Message-Id:Date; b=Q/FrM5WaJ9caFTnoFl1+glahRDFcr2jEG6pN4h+89kbWufhoQi9wgNXPCbRe+96u6QLStQSsYiItBXtb2sUZwsf7yf+/rTfFq25b5uwEib6ygEgjiZzNjdjGnqp7gWF6qXfI+MgwC/3WAYquW46oSliT3lx2Dfik6iQP4nAQKA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qX6IDObm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qX6IDObm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D558BC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 19:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781982393;
	bh=Devcxz8f+JZXA0w6CwxZSHtBQWWJdaeRhS5dr/cEkbk=;
	h=To:Subject:From:Date:From;
	b=qX6IDObmtxdOl8XGmDRtciur8cOlJKSxPcVNIgeLgoNlB/TPEUIdMjzLlLKHSFI0M
	 W3WAJ238qpkuGBo/myeXqwJ60akobSwpxnJOVmwPmpBgS/3QvwZ6FVkyvfQf/UGUSz
	 3B53bzbtPgq1ELUz0A0HZJn9kL0zxFi/qaRuZLW1D3ctKc/TjVGWNoYgrc8R54Xm1G
	 amMJ5OwJ2B8h0i1E1cf26rOauOk9EH/ezkjUgAIWtESgS4ioYzRbQ3qlrG13CHg0+n
	 gfOEKNDXu5JD9+pheWpFnRWtHV1RLliT7GquudalRVuEwslDkznT95+oU+sLd0dfJI
	 Kz73ScjKK4uLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B913FCD98E4
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 19:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178198239373.15881.17010674253771915415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18fd0423b290e37a7893c25fecef51d17fdfa4eca6dc68dc5029afd259c2035c
Date: Sat, 20 Jun 2026 19:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781982393
