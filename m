Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 490091B86DC
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 20:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720556183; cv=none; b=LeJs9qpa3XR2G8cDOHpNhNf2cUdEhc5pQiFFOxJzHC1rwcEM9RuYQZi1zpDZ9DFn+bsboCZqCv5m6oweZnQGgXY3Dv+CbGU7YkiuDNRXQQwD/TTyiLEXGc2gIHbKIoLz5p3GRLy15dyMV9p4VJDg//gOJ9HNUBTDYx8vrKnFOiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720556183; c=relaxed/simple;
	bh=k1qSowJEn5RZcKo535UqemvzSdebinkCX4M9XAmB7No=;
	h=To:Subject:From:Message-Id:Date; b=E36cUBN79ASHEqihKGN1s2SSchAJ5P2zvYjU2OAs6FLPyIF8RcL48oWEkyihpIwBo3YrT4wKo+wsPL7DpzbC3EggjFrPfnngl5TxC+jhnHv0EUmU0V++OB8FerCwTv2BLhwKpSKC0pjZh+tSD5uBaWsVJfLX2l0QumC31F1rdVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oTK1aM8h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oTK1aM8h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA61FC3277B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 20:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720556182;
	bh=k1qSowJEn5RZcKo535UqemvzSdebinkCX4M9XAmB7No=;
	h=To:Subject:From:Date:From;
	b=oTK1aM8hSoRw4rPqQdAS7ad3QZHM6UZ3BeGCg2R5RhxXSyCSOEunVvWlmU15jVVkC
	 ctNenDjKKqeLw+kwdlPf3B5uC3cTisrJZs5IHb2FoeEfLrJvy2395Tv+8zTQqnqjPu
	 syiT4g8mNOj1zJJFwisZsUj68141WRZRjUywcEkidVkS4CQ/mpvGOQfhhH70E3ScBg
	 IBDpW5KdWnhD1PjrYYMpDLYqQWfzIkEwKYFFldvX2jn1rzOCM1nk6D0XSFMdngfj2d
	 d/A6IwjaHcKf9xKCHoDJE1IpGfmv39ZmgE0IlO0GrJVmrBMo9RpnjRL+1pBZ/x03Gd
	 JZzGA/5StzvYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFCA8C2BD09
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 20:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172055618275.26604.15964280983194572706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ffc8c22a48f655e3af1dea94ddb2e31d9109cc7d1003c80e4c71c865f181854
Date: Tue, 09 Jul 2024 20:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720556182
