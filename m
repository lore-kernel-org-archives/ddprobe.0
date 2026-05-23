Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A0FA33EF
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 15:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779550354; cv=none; b=lBX+3ta048BJvNMPELFjGRJWiQGx9M1AfWliTgQ9PJffJY6JtuXDGRoR1N2RHyYAu1HNaZPkUE5IeF24Jzf64aAZCyWpLIGE9hsZAmnC05Tg6wnr9ax4PWLWXB8HCFNxotCUaPxnf5hFh95Nboe4pgdpFrzTyYqrERBkKDtNjDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779550354; c=relaxed/simple;
	bh=BbDjz5EfSd0h4sEfPlciAnAWorqoYjgXbOUSyOgWkRE=;
	h=To:Subject:From:Message-Id:Date; b=Qpl6+1dXc0yV9p9OrfVe3sxM2l9vx0EIiQBuLGxcbUxAcmvCK6Tk60NLMjqBRVbHTq1IgUqiYnfvygJtQEbCVOG40x08AmmDlQUJANampJjcWHO+bEMxJ90cK0vtEqhsjwbpDx4JQmGJnEv5pM2ugre80d5Hmc3H3zS6kD+XCJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GwmWf6//; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GwmWf6//"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA72FC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 15:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779550353;
	bh=BbDjz5EfSd0h4sEfPlciAnAWorqoYjgXbOUSyOgWkRE=;
	h=To:Subject:From:Date:From;
	b=GwmWf6//8fi20gtWJ/wfqI1XpD9eEMpcIvI+VoeX5cK+M4Ugqh1lzAlQIFxSKKcvK
	 nWDtKfeAFE12sKYgCylzF5hIUIlLGTj22NDkQ1CMYRyo4jNK2WW0DyxrsACAQ47sCv
	 wwIPg/NdUyXD5Vv0K8q1VTZ3tQDwhq8c6z1DhuqoyunJvqWkNmAOo/3fe8V3g8P2YR
	 A/tmc3RKOse9kkLdIIZ+cvcktMsPwiqSJfdmuo8FPmpssvBhNjXUu19yqXObSemUlO
	 pz4hSkRiQNdLaobYe0zPleNCvTeqB51nXSdTi/R3YlxVw23P4bXFjBu7V3IlA4GftT
	 TQkO3L5YhcYOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADAC8CD5BB8
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 15:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177955035368.16300.4982066250381645058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a7d8676ea37df4bd7301474846363267d2a4c61b24777623a5a8655208bef26
Date: Sat, 23 May 2026 15:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779550353
