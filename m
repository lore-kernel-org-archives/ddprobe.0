Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33DD73F4DC1
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 12:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783427914; cv=none; b=NBgLSfT0jpHeB4YiVJhn0P/VknNreJiBBB0AGgkVTT51wlmc0Rg+6K8T54ddPl6JoXRFzcQK1cjwAL8jbDmEkUMDhnNZqPytyPSvb4ojiFpm++aGO/k9wjVq3HOYBCW4gXp+6haswKroAUjm9Vnz7XX4Jc54ylK2gZkk8ldYgsw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783427914; c=relaxed/simple;
	bh=lLuTBNiZojXdmaEkrKkOAhEtT/5p6bgAIIsnt1UiOmk=;
	h=To:Subject:From:Message-Id:Date; b=MmQYLH8FDJEQAjZ3unAvkNy+zyoguN8gBgh2APCxNwM+h9ZeM9WqJVKGSS4BCWiy65R8VGGjPRg0CicF1R99l2UBpa6sbmpN7ofmcuBwaRVpnzocIe0oi937GwS3TIkVFo3u0JBfU5AV8sQvQPJ+EIWcbMDI4dJ4p+kYBP8O/hY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fYoUB5Dg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fYoUB5Dg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC438C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 12:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783427913;
	bh=lLuTBNiZojXdmaEkrKkOAhEtT/5p6bgAIIsnt1UiOmk=;
	h=To:Subject:From:Date:From;
	b=fYoUB5DgsOGV/pCg8Wh44omUhJErjNj3qM7GkQzwms5HufHDVAf8g4UdWk7pzmiUJ
	 zMCTA4HrrKB4Ou2cfni2srVyiDUFXOuMVaj11BgbMMAiZmBex9/7rvJ2w5IAc2tU3r
	 oiHRuvOJ1J8gmdnVQHmVcHjRGv+EDB3O70NWaJbMZy6n8chBLo056F/vwtmJ/N25Kr
	 4RKBhTRyKiIFm97tWmZZvL+xndw0l3uRoLL9a20CIRmf9Iymr6al0IcYVz6bzSPTHZ
	 nOq8B4fFy7lLIWOMPgRr8WA6Cox/wVBabvJGig3tE+OiQ/YlGCBCvOeGi+6auZdkn/
	 mdAyRvMma+uBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A90F8C43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 12:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178342791368.5127.14008850807016435001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8946d66c125c2b873404478e02aa42312ff791c17046dc1c628bcb5cef0a06d
Date: Tue, 07 Jul 2026 12:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783427913
