Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B6FE392C4B
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 19:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782243994; cv=none; b=YwRraHuOIlguvKYoQKIJcS3UbNG32n+8TkrvVRM96oN3P2hJ9PLFucIa1WSvaObg+khcUA122akSw7ypK9WpUfYt+225iiQLlMyzd0+pj3/lg90EVvkB6CO4q/HS/qug+DdUTn96BF2jlmYIyBAJAR2pfVHtGiohlDIweS0Oll0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782243994; c=relaxed/simple;
	bh=3Z3Rvuvv5Gbpw6W1CF0mWeQb2Dj0xHiKt49tm5f0scw=;
	h=To:Subject:From:Message-Id:Date; b=JAoBggrk8NdpDXS+KkWTaqFRyVtLJlT6zGVK08X3K/NJpzyC8ey4wajv8saTIJlGTCDjKGsO3iWPJ+BefnHtiR3JVlWfiXd+cbVnPbdju2yTX9ia+4IKaV1hs9bm2QadiGafz2Y+ATM/peLA9PnBIKioXZffDaUYj9Pxlswxu/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kFhtfOGN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kFhtfOGN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D40BCC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 19:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782243993;
	bh=3Z3Rvuvv5Gbpw6W1CF0mWeQb2Dj0xHiKt49tm5f0scw=;
	h=To:Subject:From:Date:From;
	b=kFhtfOGNs3ly0xpMH8J9IOGX1XBmJnvHbVEX6wl2grmHGtzUerV2ymRvOLoUJ2cLR
	 9Lhpzj45Rt3LIXJJX+YW2hHq/x4iJjYFRGVAbyGZnblmeCfvfqokzzGd0hpS7XWCBy
	 e4T3JknAiWTUsrgzfNVfLsY5Za6aR2XY1vGNlfIoNPaGue3h8tAnMM/1WUD18lTVBa
	 MNXlPurHVVmiuWUMrmMh6u/D8TgTBywQAuv/AjcBFYID34FN6a2UgSeP+VW10Pj5SY
	 y5ESWf+YF5PeE5H0rouDkiOHguEYRVcsYqMoIY8zCi9FqBFMQZhHPJgYGKiGA007iO
	 gf9giuUCUHn1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B02C8CDB471
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 19:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178224399369.23081.13254276999175598513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 750f7e64f2f6583ab5d05af329578a2c673440f1b8dca8e0ba5ecc0cc5d76d57
Date: Tue, 23 Jun 2026 19:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782243993
