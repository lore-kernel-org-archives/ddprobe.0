Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D6B624A7D3
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737010554; cv=none; b=BHEsd5agCBxLhkuzh5KppM5oaKfQXrwTiDOq102RcG2eTG0JWoN3/DD+I6xq7T/ncqXTaBUBbIynLkBtt2L870rLCrE1d8StbGy97ROuF01VA8AWorRTa6hxJuRyBfxr4iPU5pHQzlhvT1cYS0IKNLQah+yrRnfyj6APhf7kxSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737010554; c=relaxed/simple;
	bh=/i2M/xqOEFthmgbOhSQjIC0qQ7T31d8z1rfvV6KGl1w=;
	h=To:Subject:From:Message-Id:Date; b=dQ0R1ao+XspifNQ3ucObwQeK1h3Q3qGoHaUBnEN4cyt3biW+lHT2I0Jqhz1CQk/Edb31/4MwXa8wWuI8vpDVP+7uI9Ah1aFbakUevICniexak8XwzqB++1/iLgbUOwdEmIHQlZ3yrHpT3n98U/AFF2C27TuJeVDlL7RwqMGwzeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r6oc2tMJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r6oc2tMJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F3DC4CED6
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737010553;
	bh=/i2M/xqOEFthmgbOhSQjIC0qQ7T31d8z1rfvV6KGl1w=;
	h=To:Subject:From:Date:From;
	b=r6oc2tMJMQwo1qqDZG+B/sPWsGXuCI02Ra13fhp+MBXd3GkBDEz6yKdKYFNqmTTQs
	 IW6PzFaVFnef9AA2nAlcQBVjlKhe0ZyBBh1t04uZiKirNrSVC4XNCU47IXYnHdwodH
	 NiiQ9XeAo88wABdBsNS4XGQ51eev+VYgS3MlJts+awVvvtdMYmE15sAJdcVMLvUULx
	 osbNVpE7RI+VYSqd9zcoTBmUdb5tWgzn5OeqZqXyXloixTuCg2h3ubGaASWBEqpEYx
	 qki5hPDFeeR7ZJP958YP3Tvsrf6wgmRDUIPolrPXhJjF3nNT/n9JHd3Q2SKATh1fNF
	 t+JIfNt0iK/TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920BBC02180
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173701055358.2138.2902792509196693801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bd155ac41ecd111dd85241ea7a0f69fa74c574adbed11aff30e075f64f04022
Date: Thu, 16 Jan 2025 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737010553
