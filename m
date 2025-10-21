Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13630331A57
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761047394; cv=none; b=V2YXFVQjGba3UUIsvl9Ld/RqV0NdrBc8jweSELkDPo4qnx7ePHmLEW2IfJ2T/OWML4/wXHnO+BljJwYNzUmcExqPoF3+JojJC1lTlG71Ul8QW9kWuGFeB8WUmx+0dgdCN4tbHODy6yInfUIlGJDmPA38CgX7GCQJv7htzf/VkCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761047394; c=relaxed/simple;
	bh=uijRVrg9Yn36bVQtyrEiqSV3QKb8kx6UEP4kfiZCjsk=;
	h=To:Subject:From:Message-Id:Date; b=Y3IsbntS0D1ilw9SqCTcaZsB32y/XOuneKAiOBIWdqr9JsWV5kxrQS/vyZ+YvKybq/e2XUWS7cUJpo+Pqcak8eqlg+ObJm7lamjUBkt8clX6RxvJv5KhYw9uVKTYXrsEUktCZKHhZXzdFZzXP+fgDo1Xf4by41UQH5KyHSPqxEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hq/hPLsF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hq/hPLsF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F1E8C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761047393;
	bh=uijRVrg9Yn36bVQtyrEiqSV3QKb8kx6UEP4kfiZCjsk=;
	h=To:Subject:From:Date:From;
	b=hq/hPLsFxX2V1DYaXuN7Oo6OvKeS1kKcmv+UbaT/6vd2g5yvuxcNdmAdC6NN0X/Kk
	 Enx6wp5iy0UN2DiQ3021mEsiXFVuQlTrRqAD8N/QYAuXOk6XfTxSW5hVREQwlEX1cC
	 EuPn/P5NrAk5pXWCbAX46WqSCcpDUhJVjcZMvLNvbPZ1MgninOGX6ARNQqiO871fX3
	 uJ+k5IcxW6FX1BUxp16791SMD1es1fyRpTvYnBij3vPhtx5f9CtPKhrCBec2xsJgcK
	 baptCfzuLw6gZCSgAw5k7No1OHBsIyyfCqn06c44LlDBm37XjRSVKjGIP4pzwaP++n
	 grFXd5jLhUIcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902FACCD1A5
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176104739358.18079.12275207414231347963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6458540b3089a34295d339368792fd4c999ac7f3399c811035b56da1ddeeda4
Date: Tue, 21 Oct 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761047393
