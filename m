Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CB1E180A78
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 16:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714495943; cv=none; b=KWTqIZUh2RXOQbnEMOqxC8Qx6r7OlvKuNWMoIwL9kJW23jGfTL8BdnYrXw3lx138sFdLf560glyLPQtF6HP8PHD45A1e2nKeuUHPvUr/2hGhTCXZsSXWAtsGk7Unu++fQYevpd++1+3x1dSgN+Jz92atYH4zqff+Ygj80kihFZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714495943; c=relaxed/simple;
	bh=4n4/00M6LnpwzUiJr8Usd4kvBRBtzg0ent+KGW0Ngik=;
	h=To:Subject:From:Message-Id:Date; b=DuE93ANgsY1ncEEOIJ8ZicIUOPBzN63Npzuw/X4O0vLNXLdhOaB96NLDxjpQ/N9sAUMtEqI8qpoBmHH1okqIiXf8/pTAEKnZVoBpXEMxCGU0CeJg16KtjMpZT4QXMXUDZDlqjlMO7qKTGjvpDddTcvX+RytMytjJOZ+0cKCudJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oXo75VzW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oXo75VzW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2B6AC2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 16:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714495942;
	bh=4n4/00M6LnpwzUiJr8Usd4kvBRBtzg0ent+KGW0Ngik=;
	h=To:Subject:From:Date:From;
	b=oXo75VzWW7+afTC+PM/RNbpdArSb0gi7qeOIM0t7UIr46YKzvo66kbgb95nwUeWZr
	 vvy/J8BwILiqcZgNqDfpZJLJiZ21IM267rdjXlcUz2ed2hvqWuGUvlv375+XTzKy1k
	 RUpaQeer+bsd3vFP/1sl6IAsLwsj5KRISnyfKs3l6SofmJb3CkcgWTZeXD+O3+tpdK
	 H1q9cWxGvhBIWY4Spy4TgyJPMQrSZD8oyYBKwhg5vIq9aqRXbenYy5v/XZ42jXdFDy
	 /CBhc65sM3LVPWMDE7Pgpv+3mDS42JRFuf2jKrfy1iJBte5yCKM32UXLy8XCO1xaTZ
	 esNe6UBpjPAXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1C9AC4345F
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 16:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171449594284.10161.9357938410960486550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b757a07e34f9e43dd4a5411d313706398d790754e8748b245ef1ff0669470ef4
Date: Tue, 30 Apr 2024 16:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714495942
