Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AE8514B95B
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 18:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723401354; cv=none; b=N4hSWlRZD5RSFX7M/oBisoF2XL2jXn2FD5hr6Tls+6YSWwxmfhDeB/emwpDdIpd+DD3Jvgp/EQaHwziiHYizqweWXhv0gWnn1XDvlH5deH/4dmimK3FUOAwJYvxi4QhI97CQ8plpe1ccTeZg0hUslkKsV5pYfZMc91JJegVF0qg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723401354; c=relaxed/simple;
	bh=rdDNZLxje6bjrxscD8nPTrKtENGvSxDPuvl/SCq1xz4=;
	h=To:Subject:From:Message-Id:Date; b=hNxqceYOGYCc8Ekk81r/3Hi9kGcjDSfh2YKPqB+VYBSLoDvMhuWy1iuEnSECBvbEOcTVLIHnYLasOCiAgGL7wf9RPnLdQN8YPw781M+FzgctANok9QonEJAQF3ofSZXwoqrgGQktFe4k7CMQJP/xx4MTLYAR/7ssDOfRf4PmU2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B8R79CrW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B8R79CrW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B33A0C32786
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723401353;
	bh=rdDNZLxje6bjrxscD8nPTrKtENGvSxDPuvl/SCq1xz4=;
	h=To:Subject:From:Date:From;
	b=B8R79CrWxcVyVOn6v46MglkpUUaKchIrBjHj1SdqtFLaeBeJu0CSvpQWtqgqw+SLs
	 km34QCuDWXoCveflgKeGACbRDn13Y6TL25MpYChZ9BFJoHt/m0avJx4uayUNQ0CDEk
	 tyaRuPv2wHsHVyHcPVO6ZTv0PbnFVdS6CkdZa3k+8qO5jIJlsPHlAqkk7U9UkJZxsN
	 kEtTFyz4/Wa7ojs2b+j/WQz4rgaYB/bWQk2EpXSK9lL6aZXmZOUf8NzAPUUyfOPGI3
	 qoDtu8hkXoLvNuEQpoRzWfmEMe2wWDlHSItth6U2d62uUwUZSiS5APEqA2AMVR9ygN
	 E6QA5Zl/2P0Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D682C3DA4A
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172340135363.24882.2459193943442943059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f954640cf17d9576e5bce4b76f35514ac5d87ec6d99b88acf0ff4d95fc6ed9d
Date: Sun, 11 Aug 2024 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723401353
