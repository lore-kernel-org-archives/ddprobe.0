Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F14A28134C
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757800794; cv=none; b=gATifQfXw/FLNj7WIZqDbtzPj+uRQGVK8Cik05iAVDtgJ4oovFHuPiAfnuZRcwLP1T4WeA0Xc/n7LfnbkMhNiVDS93CruSLvWa6neGAFpjHEOjD6tWYOcus1GzlhJfjZawC9IV72wu4FsLQxGBUiGqHeBCX/vye+i/oWGeRbmrc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757800794; c=relaxed/simple;
	bh=5yYu1kiI+6Z8TSfZiH8YDeY5bM+J7RCjBZsvaQH5hyc=;
	h=To:Subject:From:Message-Id:Date; b=q+O5DEuNK+SC2TN0wSCqn/pNAghPNIqCCjaTz/J5pdADHXMA2t5/cSpqIudp2tyv8Sl/ka9IhqzXXwpd9DRGIYOZSyfLHY7P5MemzSx6oUEjyYggc8kERBmt5FSzQ8I91Oxnjz8MosQhcNGiiHfiKh1hgZ3yjwqco6xNob4pJQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D2fdpYPe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D2fdpYPe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C47C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757800793;
	bh=5yYu1kiI+6Z8TSfZiH8YDeY5bM+J7RCjBZsvaQH5hyc=;
	h=To:Subject:From:Date:From;
	b=D2fdpYPeQL5cklDJpfFx8M8JaYMIEKiLjH1ObuwbO5JBW8o68aA5VvCTiQDH8Hgib
	 MLo++jQtzDMnt/S31QDUO9rP+1hXw74Bc2qp9Gq3au63naidF0uVhaxQWsY7sloZAl
	 o33erOzIu6zVcMkLTzpjXu9a7aO3f22kEv6UGTM7xb2x7SVzurRJ0oFeSBje5FKW7B
	 FTuvDt8Ytw8YF5JqdL4UxwiY7624a4koZM+BNiECxQfgq4Mz1UeJe6QTzXswCyBY7x
	 zuh7UEP2Xd/uTLEh+qC/rD7b+XG2GO9Lnn7xut9oqAx65ZI4zSqjmEPFqt63w/a65i
	 QfgrZ8KNeXS1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FF8CAC593
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175780079357.2652.17730098583042853211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e362694195408e698d9ccede2c3fbe45bdb872334806444cda9905944433def4
Date: Sat, 13 Sep 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757800793
