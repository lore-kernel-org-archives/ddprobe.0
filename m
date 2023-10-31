Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F02736D
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 01:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oaBPeX0V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C417C433C8
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 01:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698714496;
	bh=vAt2HT4ni6G3psAriE+jszdJustrUQrOFavCPElHT4M=;
	h=To:Subject:From:Date:From;
	b=oaBPeX0VulYHfCoDJQum+WXFYjN23wGIYPy/0GqwaJr6pTPnKh8UhN5tUjGI5FV/S
	 OxOfXtPXNEKT+PpAwTdiR/J6ILqeu/8XQHH1lfGd1MoVNwKYH9OEZPkYkTNdFKz/ns
	 2/2No4G7T37qo5nCbgXuVD1/DiJGbJDJAO1UptUCpN7AOa+2lGHw2qvvJP8aM6y9S5
	 F7d6+2PIP8nr+9gYq4m3zxtefuRjFuOShbHCbErREldiG77No2dYIV8ozK3LpobBTd
	 0j+KYjx7+Hv9U4rR9kmhcDue2yWKdTXO35alyBpH3KftVopGSTzvYWIdHoCPG/o7m0
	 lIxcizC3/Fu8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B84FC4332F
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 01:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169871449643.5359.8356480782824105826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77fd124c06cbe3e5f0ecd54f2c287c9e5f2a0fe4750bda125967c605d09b4c8c
Date: Tue, 31 Oct 2023 01:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698714496
