Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31319155CAB
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 07:57:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717747043; cv=none; b=s+xltqct/ti2z7f/D65zU7lXOyA8ToK8XViCGFNsuzgWqVDWiLdyk/TerX4peOD6QDQCjzuALJF1/G+9/zis8nmsi0IaZUxdFFpt6wLDNwpFP0nQdlQu9eyNPdOl5ypw4/7Vwk/aQVYUzs4vNbJCY3YRgToC6a32Vvgaza1RUZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717747043; c=relaxed/simple;
	bh=PFqk2NHL2oPX+AtJcyCfIqpfbwjWUutcgD1df38RGUg=;
	h=To:Subject:From:Message-Id:Date; b=oHDJOyPQyO/CS7IZ+WQIQzPYlIrhuXFjUvY+au++5NzcTBggYH8564ox16BniMdbaKQ1IMMt5QSutTpX7HMecFtLhhx3yCVKN3jEYbEOL3pIFqhMGn6UeHaHc6MDw+RTLGf6s5JxprHR/jHMcPE6NBAVGZ6mfwNyD0VIqB3IVuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l0pzqh+O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l0pzqh+O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3729C32786
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 07:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717747042;
	bh=PFqk2NHL2oPX+AtJcyCfIqpfbwjWUutcgD1df38RGUg=;
	h=To:Subject:From:Date:From;
	b=l0pzqh+OZ1T4c7mjV+vulrwK6aVtjOsoCogw4lAEbIjkVzaJJaeArIJJ6sPTF7NI+
	 JBsOvU8Ly50DC5xCz96ldRPk23eBal6UNY+xZnZNWhNGD7ZuWbR7KxqZ8vnOYd4wlH
	 rqCmHAruOgBu46NJmpdSvYf7v++rOODJ/BTo1mr1fo8BcQxcnBw3w65HFS5psqpuHc
	 bSfNMb1a3CPr7YZFX9bcY2YyskbJSivyjmXOozJ7rEo6t2DikhlfAIcMfxg7g/yVxX
	 ColIJ2RJZcbRhEv/5NBPtYAiAIxoKug/m/fBBMfAyIjmnxNJ7j5Z16zkGlLV8BgrnC
	 xheiqpF7LJkYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C01F5C27C53
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 07:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171774704277.21862.15530679964464419552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52218cbca1221906d72baf2bc2e2af296a986d943035495f992ed91094db0963
Date: Fri, 07 Jun 2024 07:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717747042
