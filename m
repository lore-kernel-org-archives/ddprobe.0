Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 120E9DF52
	for <ddprobe@lists.linux.dev>; Sun, 24 Dec 2023 20:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LPAVlycK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FB11C433C7
	for <ddprobe@lists.linux.dev>; Sun, 24 Dec 2023 20:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703449696;
	bh=WgGkskppltgk3Ki0suAqhAUMZd3/1luaptfStFF4oxA=;
	h=To:Subject:From:Date:From;
	b=LPAVlycKCT4xeM7vo3P3zkISq6UiccFuKMsRXS7j2piWs/tKtkvClzecS+4m195OS
	 ncAZlgbFGQjokcT+4XDAUhuvL+YMCerYO+jCHTUOj2mjD99+6v1UbbdL4eUYvKnXD+
	 fJ286XfWGxUrVrChj/0sA8IQXa77GpNcbRwLowuu0ALmVkBYlqzboUmAae8hXCuriZ
	 DxhfruWqFB2yqfQTu5XoH0Bi2VY8yp0LCELeqZySF3MsuKIRd6CBMQ+aawmpL6BPJ0
	 eHVcqBqVWbZGFjS5erEuHcmW/ANTBAH+7zUNvVe60vjo8v+p5YmMbHqhbwKLxGZKOo
	 Oin8WCE1WciJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64835C46CD2
	for <ddprobe@lists.linux.dev>; Sun, 24 Dec 2023 20:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170344969637.30153.16948984396484294851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1a81dbd3edffb9bfc7ace4c33e3ef5843aa4167a442609cab5c070aea0c07e3
Date: Sun, 24 Dec 2023 20:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703449696
