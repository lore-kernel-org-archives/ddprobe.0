Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29C79308F33
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 23:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771718094; cv=none; b=pCdd3ZKKdP4sCaA/LdidfA3KihEu8zsukEPJlU5yDzzcmZsE5hItmZr8MGyrj4uV50iX6MNacalfjqTa4+iKJ1ftfcywWO8lAHwUGhG3YZQOiO5kTDN8PhkKRCo7AYe/Dx+qyuGaoc0JSzEriYgVXjd9OBfLSp7qBHOSuqD4NIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771718094; c=relaxed/simple;
	bh=q/uUeQrafq5OCtNQgVsnv9Q2IF/2+tEIZBAuvfn7h3c=;
	h=To:Subject:From:Message-Id:Date; b=gwqoSEpQQIOrvya4Onca/P7ZO+R+Gs3GAq+OxFlGqjeNAlNYtF5r52qMrKRi3p/2MwfeG3Pmhx/V+T4HcXMF2Fi+BtQ+3nPTg1uM5QUH7hR+dECOT4QikK5Q3cyHvQcoN1SUI4bzN7FxmF2SvRc9ovMVhdc7nGSRoxtSWdY2QRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hFX/ds6h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hFX/ds6h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4F80C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 23:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771718093;
	bh=q/uUeQrafq5OCtNQgVsnv9Q2IF/2+tEIZBAuvfn7h3c=;
	h=To:Subject:From:Date:From;
	b=hFX/ds6hdKvH2Uwtg5dIr5Qzsb2NYWgZbAH/OsrxjRdKMTZ7+UZfyLlfhy5ihZ17F
	 g3IajfXdncgyu8z9EY5jf/pcs2tzXx1oZUym2RuKgev3fTd9MQmFe29CboXCbbD0Lk
	 3gJwMOyEybLCfEJvNcUe5K8iEg7Np8aGuh8e5tacLYnC5fSTby9pDTDk1NlBmGiwC0
	 voOjiHSRgso3LD+NdLT+YUhdxK/iCA/eP9kqU3hAfVP0pnLNQYm27YZddXvQwp2UNT
	 45e8imjnqrwFqTtMS52jXSiiZeM/dY6rKProhpum/gbjGxoyglK0rv05+qeQIFzyDH
	 w3sbOXRAGln7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E6B5C61DF0
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 23:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177171809359.12160.16541399596304353057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de2935aa9b2793ba9a4d9aca7adc8d4eab0e5bc1b3c10099f9cc686a0f45e22d
Date: Sat, 21 Feb 2026 23:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771718093
