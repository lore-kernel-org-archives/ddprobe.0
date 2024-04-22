Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27BB31474D2
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 16:20:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713802823; cv=none; b=oRIBQhGzYFg6DsIZJJRsUYoaKhPki+2I/OCz7gIr5+id0lRUfOALjZx2qhIgCyx6gf5yD4hjyNbwKDtxio0rCLs73ERzAALk8F+IRMhdG3aANLSJa0XccJMr1SJy0OwvGpALvt12bD5VU3L5ziJhmWrRRdUVYi2ZXYxBbTha7oo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713802823; c=relaxed/simple;
	bh=pxhzVmueYpSQUUo/ngkwJNBE/NUh506oCSBYVpIG+vE=;
	h=To:Subject:From:Message-Id:Date; b=qFv8BYAIBH+Y6VUfLwOPEStJs9nSXrw8aWqrZ15TU+eF+vw104uQQMaI+5WbQ/JbkIxnzxGlYoHvqXGHCsTYm/RQwDklhXZYr/NjPKxzw6gy40Ll6L8/BxnpmLSaiE2e45zdbvN0d4rDxuwYj1d7EnXAzDn+RqTiq/DXTdYWk5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c8WnUslx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c8WnUslx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1A63C113CC
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 16:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713802822;
	bh=pxhzVmueYpSQUUo/ngkwJNBE/NUh506oCSBYVpIG+vE=;
	h=To:Subject:From:Date:From;
	b=c8WnUslxyk3ZxBC9IYBluhk7T76mr+19OxIcIER+eQtQsJIWXnnTOS/EQl7GaqGU4
	 NR5nHFij4PzVQSaVDgKUzcsZWp96FaJpxQC9J6Jtf93Ubph0qFF3/Bxc/IoZvwVAOu
	 3CRX39V4HNwkPmp6K9tl99Evzqw78xBtME3OeRGpOR5EqgvwhRCvPc7Jx5BDOpXbJZ
	 k7yEyLLdgtPlywKntqdB+/iv9PogMeLFkHnT8TPwDz/ucd77X7Jr1Guvqynp5zkFzf
	 0AUpA+iEbNrOw12Mg26HQCISQFO/NNrSpXwpHcgDHmbcL9UBABDwcRHmxW1JngPEIn
	 SknV1PJBvxLdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBFC4C4345F
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 16:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171380282276.2964.13807768138019577609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf329ff6646faae43fc3359247268017fa92393f23f178df3a1b43f3975a8d9e
Date: Mon, 22 Apr 2024 16:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713802822
