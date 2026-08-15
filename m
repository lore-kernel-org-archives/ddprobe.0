Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C64B12F585
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786759834; cv=none; b=mupwiG0sLG5JTSP578CU+oRNBWspl1hewe1fHsX5fZCFVCAn9jxcUBz08kCtpKFviexH66MBqifip2IDVeoUCEQYOgT/CMLN4qt7Qeg5C8rEOgCgvs3xJynrIqmGrtSOJRnP5zwWH69Z24cMI/EUOHGYLGGDgVR9Wv1y6713EQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786759834; c=relaxed/simple;
	bh=9OWz9aLoCmkLHLPeGSUnlFxvuZNVQIe8/pBg2OE2rTI=;
	h=To:Subject:From:Message-Id:Date; b=K3UQWhDBcnCd1fdQiYXV4iEpCOfg/tkIbQDn/pd2ayko8a1PgIoHKzmVSiljwdzCHl/WsMt5IB8nnQMf3Jp1JUYwFgdGbyExXymM2W/4AmHSb5suQLMksbeQbuXaEn45ezn5VuUnxAScEhxKw9fMzn+3zfym1m1W+VYYJTbbcyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uE5+t17n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uE5+t17n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D44E6C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786759833;
	bh=9OWz9aLoCmkLHLPeGSUnlFxvuZNVQIe8/pBg2OE2rTI=;
	h=To:Subject:From:Date:From;
	b=uE5+t17narlRxpFV7CGD0bQZZOUFw+8Q9yv90hY6fYiHcKs5mVn2MuePpw5sLFx0k
	 drkwBGDpFN7J01uCg/j1h6pEt7KJLHa8goel67wldIjbPigKYNbAtLRC0QfJftQFw+
	 QRxPmmsJMKXHRlJaM7mGN8a5uH1kILL45MN8DemB/uPyUtyNkpZxFb95LEOIe6sXXN
	 99aes8ssryvb5ieajkqrR4FyoH+0s+P2t8YwNoYR6dWpJkXay7ChzYm7vXDsnaxQbJ
	 IwKHSfUFloEvIalrkSEUlKd/yd8eOndHp1rhVVdlL3ztqNsY/jA9KWtT2KW9Zy0Osq
	 RCRZdq+kXymKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD895C5B572
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178675983368.24509.3669953696702359772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 108c16c0ec572e75da98b9cd80763e276b1fe14f5233994729d947c0fb726e43
Date: Sat, 15 Aug 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786759833
