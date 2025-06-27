Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3672E2D3EFA
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751042394; cv=none; b=mNN7hF0jNOcS48kGiJ4NEmbjCW+O1FWIfhVhzqD7cYc+zXxHwGcOelBQFP5pcfIen/GRtVT1jeVDReEgJWh5L9LlVpIL2j0ssGx1GtAMlefoXMieedDOCH+jKlWY1xTAZotTVlKximgBJEa8w5NDoDuxN4WNaWNhJK1plDABkEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751042394; c=relaxed/simple;
	bh=QoY/Zk+Pa7yAPnbWVbDTQPeW8PnTidfQn7SxGAGpjXI=;
	h=To:Subject:From:Message-Id:Date; b=UuXsOUSwaN8afNoxTpXfhqZvAM2eThSnKfcrEgEXIlwn7VVyrwjz0eDiA0z6OJ7i9UhMuFOXjFTM8jcUbW1xpYVUCbtISh4gIC/EhLSPBEcD2F5TUmaCCMShak0F1XoFBJ+gNGPGwBSLn5o3hnmcA2ybc7sV1qMwRnqdU88JFR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hg4rozaN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hg4rozaN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1063C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751042393;
	bh=QoY/Zk+Pa7yAPnbWVbDTQPeW8PnTidfQn7SxGAGpjXI=;
	h=To:Subject:From:Date:From;
	b=Hg4rozaNok2UHQRo+mDQHtXAUwVgiX9eO2p0qE0O3gYgUG7hAqUpdOuVf1oV9WwQV
	 0xvxe+/hguEJZskv5e25PqQoQ5KZ3oYlr4GSSGfZRcCRwaso6UohSrM0dRJD+SvioN
	 kjhhJ5Z6XdxmVXHcc45php7S0blPLjgkq3GQ5QfFm05qriIBl01DMgUYuCSF6XNdmZ
	 3Mr64wrCEZ0SyK8cVUAFYuzl45XDN7rDkZnPKxLNFxe/qvkeDYv63Chfk4ioxptJf8
	 FSp6gIDTddsxtcSqitwKcgXAqJHdP+kDDyA25LaJn7jgW0tglQgCiU/k+PdZHtHU1S
	 9MlDjYgpBelZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F79BC7EE2A
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175104239357.12940.17548601588294666826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 766b90e055d6b2251de69fe7f45e1d377fbf228146341b97a622cb36832216b6
Date: Fri, 27 Jun 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751042393
