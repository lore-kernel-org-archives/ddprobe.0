Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E634E657DD
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 11:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706613497; cv=none; b=YnRJN9meTqW+wmVJcvsntENo46zhDsee9nJpnUQDHMi180ZZLNTPs9thBf+G1re/U3SaGbUNv25hbIhEvW5G2WIkXgNFH7bi+4n0cOG+EX6F4BJBKIjPd6yANvHdKMNtGvvgQZSoqTVyDkGDJCHu+bQ6rbczfJaHjoOHI2h9HBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706613497; c=relaxed/simple;
	bh=/Vrbpejpp18njcUVbIi1D1gjE8HyZwW1q+SmT2Nom/Y=;
	h=To:Subject:From:Message-Id:Date; b=MGhVI5g1+bqG5v+KMCCAWsERjGGx5xqbCZukB4DWjyWY5c808qQJ/1XFK51xNpeihgtDVBrcVyIfO1dq4tBvIgXcDkE5g3Iw24wkfJSun8INseg2fx5OnIRjELBcwtNcIZS1O0ZnYona1+B3V3tosFbzZSGPqBLPciH6Y1N9KH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Frynod1n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Frynod1n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7904AC433C7
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 11:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706613496;
	bh=/Vrbpejpp18njcUVbIi1D1gjE8HyZwW1q+SmT2Nom/Y=;
	h=To:Subject:From:Date:From;
	b=Frynod1nt6lVq0x9Z9siz/dVE0f0ABGd+TmzC5jg+9O+eyVaWa9BFsWuVyyEFNy7h
	 H1TjvMTdfGlKro3h4sG4YsvDJLF51vHFMtMCOu8+6G7lSZALDx5j+srWKIyjgJMYwC
	 wjRE5/vbScMSzEGOGzDMl6bDhqupRLErx3VCzrOc8HUQ/CgUQromyKXJDQKLrBaxXk
	 CKDLuK3IyWVL1qRkElXwK/Fzxa12VJA0Yshsgu4Ya3ElFAzDdr2BjxE7/lc6b59XMj
	 qfQM6TfVGMpDtv+sQJ7FRpMX+nJYzrLf5a4T0fihewV4XHOo+Tig2VlVyW5e8LBFgE
	 LD8hGfUutlp9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D425C47DDF
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 11:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170661349637.31071.1557704815350852403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bb722c15654939aa2b5bc96d117faa8fa2ae6260e5b6872d2c98ab17aa958df
Date: Tue, 30 Jan 2024 11:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706613496
