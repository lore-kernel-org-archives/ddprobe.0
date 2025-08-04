Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B90D2080E8
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754277594; cv=none; b=PQS8pBgHjWmqWSDuQNrnvEt66/DrQ4l96TK18QNZBxiZr1c8ZPwCQw8p/gXXOkBtkNLmyyXiomLfnYGNNAGg/wzObP06ZOuP1Z9Wyc5DP+qlbZm4QfVzfT9JmbC/mvXp/enYgI46M6Pf/7NhfP3qFy1TTk5hlO9DOFlp7GlvFNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754277594; c=relaxed/simple;
	bh=TPwKKddjsfF5tkfcw38rMJDS2xWq4+VfmrR2G6iI+Ps=;
	h=To:Subject:From:Message-Id:Date; b=GJt/KenGKwJG1LgBvM5DiAoL6PjUiLF+7TwcQjQg6CJN+lJmtNDr9GCBg1xUVX/K1yTQ4C/PQWqfGjcKMgInYRhBUq9jy5m4QRD+j4apO3xsDbaNFraI8qL++zCNxAsaPoNqJs7sULrKtD8G9PMW0AZhIQmMKV2rRJq+/YH4iN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BJ1LB5Ml; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BJ1LB5Ml"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1836C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754277593;
	bh=TPwKKddjsfF5tkfcw38rMJDS2xWq4+VfmrR2G6iI+Ps=;
	h=To:Subject:From:Date:From;
	b=BJ1LB5MltSpbFylt5WJGGMhwGeVo/8sVGwcps12Jo3TO6GsCtUmBkVo09iK4GBY2p
	 n7bur+vFV56VKH93+k7+IvOdHemtQprlcvxuUj7PQaTARcDgxbvlGI6+0erIHta1hy
	 yCR5sY+SNv7fbMNQAZxWI51fxsKt70pTlZ5YOURW65ANp5n33Khn/A8Q2hFXxjVZlr
	 9nNaVuGCtcHMig2Va4+dLRse73Bxfd7qZX5zly6futAmksGxTgKBi+Gu/JJgcVLEOL
	 hraCtUAE5qhFMqOUQAcZONI1po5QCS3Wgs3FCpqAPoD9s7XHSUiDt93oqPz6mXd9Z1
	 f6pODgwPgItYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFEFC87FCA
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175427759357.21093.4661073568098843698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8091ef96cb43bacfa4cdd3824d2235418c02f4000ccd2ed75087e85eacf90c47
Date: Mon, 04 Aug 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754277593
