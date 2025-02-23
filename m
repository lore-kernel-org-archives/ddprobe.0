Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 437C925776
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 16:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740328734; cv=none; b=TrnsbpoFwvvnztfW6HGxamz6P0hU6ZH08M0KLhLcTbqe4Kmt9FbEBZKo/171cwyMYmS2x9iRommauPJElZhDi2dlgG/+4gZmWZQBzvKeSaV8trKT9TxJtWXaxRmDWzz+e5Y2cgFxwu7Hiogr2vE7bfry7btmHmlByBaUArBvZvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740328734; c=relaxed/simple;
	bh=GUedtnzJZQfS4FCk0yWQc7FciWE+HuZ6gfB/WReV92Q=;
	h=To:Subject:From:Message-Id:Date; b=CxhTWYYgltF0AoGniK3Eayn5O9wMv3OcE68kXH774yNxHGH1bz3BfaWFYLM9FsuKrXqC5Oy3vTT6o+WS9CG6i64XG5PJ6Sv367qc4CfegSWa7O/pjqr25bXIkTdZdgH2KrOBiHyLpqFLc+XRknK8vIqdPCwY23B1MMNqUzMqhuI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U8EZVRUv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U8EZVRUv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADECFC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 16:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740328733;
	bh=GUedtnzJZQfS4FCk0yWQc7FciWE+HuZ6gfB/WReV92Q=;
	h=To:Subject:From:Date:From;
	b=U8EZVRUvtPyHMv1WsJf+ugPQJyvTz6TcS06BkDFWOnK4LWIjTdOOd3qmdq5NLuEZq
	 6HY6Xt+A5yH3Fi7FFhSKABEL6YmkHB07lDsC8zQbj9BTI0CGz1witCnZlXWQR4S+dn
	 qdKpiicIWvW6y1NWpNkoMCByO5OViBdYHGLMV0VcjYB0ujaDB+N69zj98jVc3XhR+x
	 PC3oyf6j+bh+SVOoDSxMxTNp4z9FUg6RulSs1JbIzmfb/raN3/AyWVyiAnOmQx4dtT
	 HB7zVYHCCDBXqgCj6wyjadAkr3pveGWVNbwUFQrm2MgojIV69z5mcLMfMzGRhY2Ug+
	 yTOUOdrTYwWWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99136C021B2
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 16:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174032873359.3646.8551347078346088625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd5fb3c5126ffd3fe5c4e01535a05f8d640e8b815736768744377acb66e0cea6
Date: Sun, 23 Feb 2025 16:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740328733
