Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59DE928686
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788093034; cv=none; b=Pf1SUR653xA6M1eM7c7rtDt0hZf1Az51wNtc3sSxvM77MRKZ+64bINFuqz/YO+QDDx0P9B1/Ugw9p4YqT+DQEDwHZS92JdZb9dsx+rz8eP/nOxuaB/Rfx/YeOqRJoj5ggyiQdR3JYUfs3z1wSxWPsn+p5SrDc1cAcc0FHY25Rjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788093034; c=relaxed/simple;
	bh=DyvC49wDtVZwtkz9Lq6Ruq33Jd7ieEU0hApEIuSb6wM=;
	h=To:Subject:From:Message-Id:Date; b=ll8/JVT66ESZNC4qRMAXXlbWULO0jo3fY/zX8SxDIba4UtQjxELkiIwFHgZY4JbJf7fhPty13TIjq7SKSGtu4xHahFu07qq2oTOslUXBw/2x7H+vNLqQdWSGa4Zf2J6ru6OlV76IwUBSWVT3719ddDy+IUPOUJ6WCapXdhCsAaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GODdlZlw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GODdlZlw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D179CC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788093033;
	bh=DyvC49wDtVZwtkz9Lq6Ruq33Jd7ieEU0hApEIuSb6wM=;
	h=To:Subject:From:Date:From;
	b=GODdlZlwHyHSxKT9iwA7tUW9rJO/6ZxPm22SvEGCA3ULPpfCeI/s5E5Egvh8F7Oxc
	 TjTLGCP++lEORqFDo/WSMBXBdX1KKxcQC6QIeU4Q/VrSjOLnU3m3wj6P6XJDIUswsg
	 WPBl+1tkHQwvBFco73pwB6aDm1jTDBjlTxAZF8RVExr9EbQnojYzmNWLe3siiftSVx
	 7lqE7skmsSJ4Nw9Hi1r7OH3a9PNyXJG0To3SlBVqwZ+nrH8/pNZecKNhPDXtJwPIn8
	 qICE+6HHIh3eibHJ9KhnaXKUTDFp4TWLlwpi3z496sAxV6ZPYxK7/EunPChhNJxlzN
	 RGx6gyALdvoWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADEFEC61DD9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178809303370.22138.4244992637778215760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11249f322599d0852006fcbfb5cb741fae68a41d889efce269852f997e7baf9b
Date: Sun, 30 Aug 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788093033
