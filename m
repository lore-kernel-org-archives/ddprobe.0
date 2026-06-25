Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 536C2225416
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 06:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782370654; cv=none; b=Jl1ICkC3DHigXDlaYpdjS9OQpqoPzTYlwRyewTKliqxieRzOqBn9FJk46f9JGnnOPlb1sI606nChsR1dpfSC1fe+/GN/rJYDtdaMZ+0hGR7tTqE2yCk3hDiSoMUVz51x+FOPwdeysXdAUi9QI4gYy9wc+aIUaoyh9Zrx4TXL3eY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782370654; c=relaxed/simple;
	bh=r3VuBAEwSd7a3bTuaUeRyi/Po4k+3k8bGljXeh7/Trg=;
	h=To:Subject:From:Message-Id:Date; b=Mao+ZxndSzKzZLpYVErv+C18ppqleQ78PLauKMnNRg4NohFIoYE3fa+8PvKOORM8LOjNYwbCxwq7L4+7pSW0D3bZbQrPSiHdm/3axbHOYPXtHhPwx8D8E9u7f8Nhdn5+7N9760kbFY5T0HBJpBhpBQsxYJMTNnJlD6JoXRiEjYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ihpf4eYg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ihpf4eYg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBF0DC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 06:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782370653;
	bh=r3VuBAEwSd7a3bTuaUeRyi/Po4k+3k8bGljXeh7/Trg=;
	h=To:Subject:From:Date:From;
	b=Ihpf4eYg8nMMo1edDGExqELU8sH2JHPSsAD7OLgNgWnteBucjQVZ3lcCYsxoWOPgj
	 I9uC7XjBFVBywjKwczMo7Gho7x8HV9jx1At7xXpC/A24NSRftWw2qsBMeD+jZww6NR
	 CM4YpdT2nvNlr2kSD5hTO1kE+WtJch2M8rDao7BySJd1ywCGzEQTwa+8iIJf0mqKfV
	 pLnDPrMRdGN2YVaue+8UioBAKKITvv9KXr5At/xHA6VFiy8oyeQciBULO/C/aCqTTd
	 K3u4rWWqWYVWQLAcGC/nKn3nfNolwS3klsofQwuX/KzJiKoN4l70sBRIv9X0gPEPpl
	 goaS07aC4rzwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8A64CDE002
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 06:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178237065373.4927.2308384236806856657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22b6265b435b116ff1ebad978b47387b50ae136d97656723eb2a51d92cc02499
Date: Thu, 25 Jun 2026 06:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782370653
