Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AC65808
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 02:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jeTgUFDb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE91C433C7
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 02:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697768896;
	bh=W0hGwaiJ91+4W9No8N2LlOtOSNFJG+KyFUQBLDfxsfE=;
	h=To:Subject:From:Date:From;
	b=jeTgUFDbmHUan6MigcGFPh7lDcUPRl8vLToIqmF/XxlXXEj+gMCzIB4a1b5ND3f8T
	 J6DpDOjOlZ8ZZ7F+DO8TDMAD66yPcheOONqdjhWy1rkTKMq1jASlWw8qFGk1sb3xbH
	 cb9O7KcwP0vIBnW0UYG0PgYtKzdJpDIC/xJBkBxYa8aWpacjwEfyhwuUBh/vv3oD3j
	 GmKgmXUm8nVnDtTjnolyxuMt0o95ybOd2ogWH+payNfMGDk4N4S0PhB/lo44IENxx9
	 +UyiGrx8DXu6yK44hSkDhl4EUBZ1FI/MIDE9G2idugCUKWImkF+TPyjZsoeCY++Djs
	 DO22aiDLrsrmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 729E6C0032E
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 02:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169776889643.27038.9311553014943820084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a0587eefe15599e6dc694a4dec851fd848dd92156b1c43b61b25577737549d0
Date: Fri, 20 Oct 2023 02:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697768896
