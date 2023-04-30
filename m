Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A1E0160
	for <ddprobe@lists.linux.dev>; Sun, 30 Apr 2023 00:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF156C433D2
	for <ddprobe@lists.linux.dev>; Sun, 30 Apr 2023 00:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682813166;
	bh=cUf6P+jvqT4w+MXpE0vFqrFO7z13P+ZOP0fhkIFbnVc=;
	h=To:Subject:From:Date:From;
	b=dk9gQyl0xws6UorMwSz/GR0q9ND7Rm5RKMgejrqbVu9UiUVGFrLOnrOFdsf4FXI5O
	 KaPKDeBfkl/ZjoAQHkg2VouO5KNLeOGSA6jFA2TYtA2KJxfAQvjLZUg8zIWsl2LzFz
	 0GDfe6zz5YEDEM7NtdowTa4+EXNzv8CMOpdFsu5rtVG+Mi4cUI8ppzHRnJLOgx7VhT
	 MiQrxN2fHJcnEX8yS8y8seJv8Kz3AIGH2ukL/p3mabp2ai8ZPSx1D1L369pZbuDYTw
	 RLD3LeaKIlxIQg70rfkziY96+VYulHETsL70yrqCL1XFF4qjz0/09n7ODlf6PKO4Oe
	 dmvYpcVnOEp+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8E57C77B60
	for <ddprobe@lists.linux.dev>; Sun, 30 Apr 2023 00:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168281316577.26667.11046437943586345108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19ac8fe6fc299606fda9ad887f84554d6f0056d5842ca3684f6e7768e4ab04e2
Date: Sun, 30 Apr 2023 00:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682813165
