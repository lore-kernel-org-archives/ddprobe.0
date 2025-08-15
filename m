Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2488C1C5499
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755236994; cv=none; b=cja+dm/5HRv62+ZFq/OQM4IABOX+5jJjXX+m0Wt//AOkW2Tb2g0D7tzGwAIIDTPJOubxwRUGOOlccoUgg7SQ3Ut25A4OiGYEXdR9qdh8WlUl379UhsiicSinvAsUE68KvqK8bLSjNKGIwO9z5kfGZVroKnGmNDnNlc3dPlNY8wQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755236994; c=relaxed/simple;
	bh=5zoyiV5n6lgKHSD0XhqZu0zuRIsRjC90+/z424rHwYM=;
	h=To:Subject:From:Message-Id:Date; b=DxkpryN0MoWSMd6cJqUvcIFysgqR3e92ufT0uU0N+9a+JX+tQQUhR/ioQRQBgUzc0gPfRzF3K95wtaVcfJ43kNOCC8e+QIF+NsVoFADgjtFKcx644GfUc3w7FtXI+lO2aUSGjRrIkXGyz+31q0DGRjbnsuNncrgLM7JyKqaxDJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jufdl0wF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jufdl0wF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2678C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755236993;
	bh=5zoyiV5n6lgKHSD0XhqZu0zuRIsRjC90+/z424rHwYM=;
	h=To:Subject:From:Date:From;
	b=Jufdl0wFvQa2sW0fsMA8FOwLbcTgMfpIm4LJfHM1XRDCuJ+8TTXxaFwEnf8RsdAnb
	 wNSpv1e8QZ8IQHQrWjuRFUiCIxuAsUhWyIuNV64ZnTOxrn1JUqHXnE5FYBJzlQIU1U
	 dQfnzKjug4ISv/tdq4Ub5x254dvQbUccEGisTccSOXZFbBPskxbeS9t5Y/FKHVZ8DL
	 DOU/yr3XQWoxsU7V1SiPf7hoVSRMGLxyITnUNT5X+vI6Zohu+ZAeoaC0LNpD2lWkt+
	 iIy9VlUvZKQWLoGJuT8Ok93dWZoytYJ99fem7fJZLpHMxAXtTnAkpxXqLCyVk5l9PH
	 n9hke+B3hQrhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B88CA0EE0
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175523699357.2708.9264045735409004749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 031802debe1a331220a738d75cd2a78b136f500740fd441e32557c755f153e11
Date: Fri, 15 Aug 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755236993
