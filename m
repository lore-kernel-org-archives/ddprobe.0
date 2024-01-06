Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08C2DF9C2
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 21:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KTVR7w8S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77DD1C433C8
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 21:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704577096;
	bh=clD6Hd+cwNpTbGFVvDZ4CwdBlQs63pj0Q0zGYo1qySg=;
	h=To:Subject:From:Date:From;
	b=KTVR7w8SpGPOMjI/ivUH5Od4xVUFZAYrwUviwn4oNMfx3fOU6040rL3QMOWbyxBbc
	 9qHE+SUcXtmyddFxWpiXFuMMD7YjcggPlgtyGr0tFGOwlRuVMwCY6XckwRgkyxeVy9
	 bBxdF7coudwBu7zjwC86swNH2RNtzPBscy9KzHB3QiY+G9Ju4dWzgK5M0FzHzGZsfn
	 YyhEHTSzgSaTeMQky2ZS3bx27bflMaQQSl6AaCBKnwgMiF3my9pZe7xf21P0M3vw61
	 DMUC54Iq9BJdhQFO9Du7tfiPx+zsqcR0gMeH/xOUbwIx2UY4097rn391zGCciMst8D
	 hK5qeY11FxwkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C7DDC46CD2
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 21:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170457709637.17357.2879191904608790767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e537abaa8533f0ca2cce6857379253266e1647254cc76996e62f8353b16d8d9a
Date: Sat, 06 Jan 2024 21:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704577096
