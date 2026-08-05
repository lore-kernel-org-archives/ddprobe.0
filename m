Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54B2A3A6EF1
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 18:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785955834; cv=none; b=eLhEWfIZtJF3A0QH8hjU7ZXCMbiUvwnMUeYGlOUYHKlwZUH6ZMQjX3tDDtlmN5PlHmqRyONj0YjhkAysFMBfU5ZslfXEBtrPOAQIxgGjYG+v10Z38Cxpd1QYMGYJx/a7LXqA1AeF2FONaqCstSBcQe143ds/DuMauADomJvFln8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785955834; c=relaxed/simple;
	bh=yd+eRBu4Zugu/lrZ3m8LEkcAvPyc7Ml4MwvHK16pkHo=;
	h=To:Subject:From:Message-Id:Date; b=Hbwr6G2SZ9Vqb4KpA5yhHR3+riC1XNt9bMYK5pIdZo4AZ+iC4mFhc4ENtIpn/1I+uTpjNlgw+kmotccTTSmNscKtWGJ8FUou2OGswfXpeWMkbXnAmPNL8+5qhadcQUN8Hsz9xe/v8PJE89FY8guC/UNpPgXeRrocVzv77JtEKEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GvhXWUCh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GvhXWUCh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEEB5C19425
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785955833;
	bh=yd+eRBu4Zugu/lrZ3m8LEkcAvPyc7Ml4MwvHK16pkHo=;
	h=To:Subject:From:Date:From;
	b=GvhXWUChU7rud0LpqlkxoPd1lZs+/4VuYj6ZmPvdL2rIbkgFtolhsd7ShaP8Kcf40
	 gXjovF9AVIUjJ6cjZ+Klzn2LHZeUDa8tcKGv6jy7DaVB8PDGftRgqVzbQIxQrgytB/
	 r2WBMPEpN9ySs8k97Hfk68R1aif8dWHn9FU1RqoWjfee8qtDMv1+zwIvahgm8HFEcO
	 6/qTNwDM72BMGqKpnoHv0B8MbBo8hjnUoZYawrFn6KxDgy7HygK+rQVeCP6dIvmDjp
	 Y2+xC7zx0sFySWD6sSx8gHqRNjoDN5Ga1qORfBzcMaTFZ8DPvYVvqpm3P4Pf4LHm2Q
	 dxhgW52IhCuOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB217C55174
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178595583369.23979.8069195337755914113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb3e2fa43ed7540fdfb38744f759fbdb60a13e502a0080321c5537da8be06e6e
Date: Wed, 05 Aug 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785955833
