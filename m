Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62A1F7E5
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 02:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bncl7XLo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE7DAC433C7
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 02:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696560428;
	bh=tE6eHnGe0/H6gFnMC8Si7tG3/Gn4b7eN7moDYXQ6Tuc=;
	h=To:Subject:From:Date:From;
	b=bncl7XLoeXMra++FHlOZBVJUbfYudxi5VSH7Exr0IJl8K1eosZNsxpe6+cIwJJv7/
	 XAn2q+mkcsgj4QvMrDprT9hDkrpqsj2sqg4VgxIOcZQIdGggj/k3LRejhR3UIfOfGl
	 Xefj4UBn5a18B7JA3oGrdkPr7TuUv+7T514enuFyskz7HNeUW9ZXtJI1sIVGPFgoGi
	 avXvg/9WuJwBZ+QJBrykT/Pv5yGs3ZOPnHgTARt19kkJ0tq+Gft+JlFRyIyRk11pAH
	 B/VodI5XOzH829PGnbfCQ8kgGA6vUxzvs3qbZu5o9+ol7i2bu98nRepQgL84GYXZtt
	 ZXSXN/h0i7yRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF17AE92FD9
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 02:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169656042870.30176.6696081166505826257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97adaa9ef09d26bdb7d858616603f18e01cd53fa0adb4632d77855240f494e5f
Date: Fri, 06 Oct 2023 02:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696560428
