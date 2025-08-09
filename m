Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22E79376F1
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754708994; cv=none; b=kk6/fOokkqouC/+bihdPESnzU8uXKXyVZ76Yv6jxWTV7Ng35GQCWVC/2Fh7wzSe46ZfEpw6zmuzoHr36v7z8VeRRe+XQynCxd9qllpVH+C9TBLKk7L1QBMvGO1hFNQF9a6dZtncJ7oGr76jz8SjTroxlUWEpp5jjQ8f3KIFl30Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754708994; c=relaxed/simple;
	bh=+KaJhzv4/jOtR0tWMnYKEVZ61itA7yV1BQz3k5bpeZU=;
	h=To:Subject:From:Message-Id:Date; b=FkwpcdLCuj1cmNDpqu3jW1ntMzm+HVIb6/Kf+bggDa8a7XB7PCfelUfVO0/EmIZSJXUVNvRsf01cLE8vr0w3+c+4NSdgGY0E5SYtvHZna2SDmdUk/vCuW8QsWJXbTV4IgzdCtoYqinjmEzithRWKQ/tsO2Qx4sSXov8Qx2gwKbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cPng6tGG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cPng6tGG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E0EC4CEED
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754708993;
	bh=+KaJhzv4/jOtR0tWMnYKEVZ61itA7yV1BQz3k5bpeZU=;
	h=To:Subject:From:Date:From;
	b=cPng6tGGQSw3dh7JzN/G6gq702MtjmKMgDprahPEEy86U1GXJhtwKk0UMB6nGbc5v
	 GefR3khrSCu8A5RvBgzEDTf0ppOYq5G6itqKzFitpJZibAU622K9aRg2kZD2284SKN
	 iUCft7ld4gpEjwSi7cSNV/B1Eo/fZnpO+uI4q5lMxpfE2LGvxOlXLvDgHAao9BmVqH
	 BAPxLWa5Y5gt2/mALsnI4QJvRefCsWkohO7bVw2mB/Z0HnLJIFub4U+TK38e9VQgLD
	 Nrfruzg+QTY1VEnOioqkktMkl8Owm6Ezgw6qonIjz/RSmuMagSspTrtS3bTPH3W0F1
	 TPdxHOlLtc6sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C78C87FCB
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175470899357.32356.5523874417174870151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a115ba089cf1846aa0b21bfd02c9e9b4f88bf0f5b5f3eda0a4a2fc24433ff087
Date: Sat, 09 Aug 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754708993
