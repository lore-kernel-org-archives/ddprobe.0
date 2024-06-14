Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7187417FAA4
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 23:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718409503; cv=none; b=MuFIhC0IY0JPXFxBebyzj3FOqUkWASr/e58Jj6QIGVKkh6o4VUGMqHL4mrF2eHTHEHKWaMt06t/cLdnQ52XWFJO0htSvcQwb4yyJtFWlW/fLHWNw5097BeFZwEnwetJbkNvOF7tbaC7VPwSLowAcfwUsOvkZ9aUKbWxXUabSg/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718409503; c=relaxed/simple;
	bh=hKOyNs19wIxX06hjR/rVBB1MBNkZsnkmXsVLemw2uWg=;
	h=To:Subject:From:Message-Id:Date; b=IzZVr8jAUs9PezdtXkWaB0o/Jrl6Tbk89eKJCoizokvgJiuX6ki+VgSLIAN59nxYo4BFp4RWU8A8rJXi0XJs5+wWMEmWkxHcBdPvs0SWr8LqMjL3InMo+nEVBLM59Lwa0nZOgQ6omhKaHulRla2Poi3u+F5rEq3Gj45OGlxe43E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OEaYBBcS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OEaYBBcS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E063CC2BD10
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 23:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718409502;
	bh=hKOyNs19wIxX06hjR/rVBB1MBNkZsnkmXsVLemw2uWg=;
	h=To:Subject:From:Date:From;
	b=OEaYBBcSoqCPZ7g97ATouPncaAY3BIUbD9h3rbB/i/vj9H9AirGC4qApEjYvZ3Sp+
	 ZVXCtW85zK/30gL9bWL8GoLMj1RZB33qvbj/4Erl7ry8nQum/D4MY+rs1hl/VP+J0w
	 fYYDvfs0iwDdWE5rikjal2xAayC8K0hUIa+qAVJwwNpXejpoNU6gQ+1jT8wCaW2qs+
	 /qcSo+ZKxcW6VHkl1et0Z00uq33qgJnbwfzK/bg7MeMV5GS2GUsKiuqyXGJ9f1QIpM
	 7COaEwAlNbfjb6VNdzF1Vs8GbQwvD6R3he11D2VqEqAM0CyXGEEab9yAo5UCauaeUq
	 cqmAIlPaaWqMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C50CFC27C6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 23:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171840950276.12426.10028399089297718643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0484b52e47cecc145447d2bde7ba92c7d06f7cc186d172bdabdc2403cb2a8cd8
Date: Fri, 14 Jun 2024 23:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718409502
