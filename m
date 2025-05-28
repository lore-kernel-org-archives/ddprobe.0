Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED1C7FD
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748395194; cv=none; b=efmQQDH2FKzJ/clRajRzGSbSyNgYcbrMnfxfUV4PtAMHPZIsO2/93aP7vBBM4gJGBjQ3sbxkHO610fTugccQ51SzQZ/zz4CI+J863ITgZYbRP1nUOSF2S3wtukKkps5ntEFidLbba6fXpWK9w7NriooWw4IUZHWDLp2KfLq0o7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748395194; c=relaxed/simple;
	bh=F+DFFBuyTNrUxPCVMus+m70WI361M29UnY57B2I7UY8=;
	h=To:Subject:From:Message-Id:Date; b=NrwvgaqDSW7P/aCeVADNWtnHsxKzrwgn4ASHoarrAz3GHyveytw1174F8RcPg+TQflFL+u790Zc46KzV+qZVocjys9IS48Yu3XEUl2YcsSL0UbAnssVkHUClfkNFjvcnvy8jZVUlBuYGfvPHPm/I6TmTkr7p/uiUzvONq0bmlrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YsIKzY9s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YsIKzY9s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DD27C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748395193;
	bh=F+DFFBuyTNrUxPCVMus+m70WI361M29UnY57B2I7UY8=;
	h=To:Subject:From:Date:From;
	b=YsIKzY9sEiMhGQO1jxblziFd9xNcrr9Y6Rf4toJETp3CjOfW0+gC4+41uJ7RxNJqq
	 Xxv7wHRmK/NZcSv+JD7hQoPw8wH4evnCe4l05jKlYFqH1fJrAH0JGICM4HQTxpnvpP
	 vYqB1/Z5KdyLqn1dMbM2ouTk7SWHZ2CDdxDS103uKOzJtM/eCzC4KFk5ZFiehDR37q
	 eO6tRDmmuj9r/SqsjW3GhJ/thtrhGGVEQyyRHjf1XaV/74P/MMfIrr7db48UZgFiKG
	 bwDHXAM42+ClHu8vubaJpvexk+19Eo6ygoB1Ifs/Pf2NXvDv8nYTSfOyLGnKRWSxll
	 o9KYg2bZ+zsHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED37C5AD49
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174839519357.13035.15862449272135917988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 667e526f91eb53a4fd554acef2e4eb51d4a47519503995ec10e157e40b5618a0
Date: Wed, 28 May 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748395193
