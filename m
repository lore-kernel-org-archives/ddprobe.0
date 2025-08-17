Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE05713C9D4
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755440393; cv=none; b=oSRrJSUqsnt5Z2LR+CDALX9D0sq8oKz3Pzna1mqb2LaWfH0V+QsKGgnS+ARJ7R17FX3FoY4YcS/iXQKRs6nIEG1XGWg8mje/uLApJPfTXGVb42qEv94AWRKZKW0TCBWJkqK82LpW7x5f5hGgUf2jyMo3CQR4/NRl5haV4kZ/Z54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755440393; c=relaxed/simple;
	bh=t+lLMMq5MQUi98JmTnr0C0WhW/1RH5aV9MUghgxLv9E=;
	h=To:Subject:From:Message-Id:Date; b=Sp2aj+CkEYwI7o7/BMkFvYxBiApDQEEo9I7XZLzPCOqR5H2tCvWuU3aKl7Pgeu2VbzOlQ6wCSYF+1bTOqTZC7o6qxred0NRCLz463zjxMqi2kzxizIZb0bvDj3YMpOy4ZgBMGlG+1jTVHSpYpJlws3+1W6ORxlCXJeRvyBCoeII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q2aovK3M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q2aovK3M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11AFC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755440393;
	bh=t+lLMMq5MQUi98JmTnr0C0WhW/1RH5aV9MUghgxLv9E=;
	h=To:Subject:From:Date:From;
	b=q2aovK3MeJuF++7JZuiULXS13KGVDbwt+0axsPfk73BnsuQyPWYbWSh/xUCF9eF3x
	 iMNm5mbGtbLM/9xWKKpzh5SnarjMsEZz2BSFpJbX7xMT91VbUK26AzGGNEF6CWFXEA
	 Wyc1VIDhUup4BO9Ftshl+ZGMxWMQ/dgwbGU6IZIxNhRDlQPUXGlWn7rc+3c7M0PvDa
	 KSBYOtXvWvx6KGdriBjByZgQMMLFsLEUR8MuUlkdKKBZNurY1RMyNCyl1OSbcQRX4K
	 j9NZ9KEvNcOGid1nQlN4KMMxUM8mWXUuXhaq9lD+ugmbI2Ak9TfPwgjsOIoSU15cfD
	 lzVrVf9qxLOZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92098CA0EE4
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175544039357.19966.4884973783232032536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b39b6ab1e2502691af365864d96a4ecaf5a4fc2ef896062735d35d14c9af0e88
Date: Sun, 17 Aug 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755440393
