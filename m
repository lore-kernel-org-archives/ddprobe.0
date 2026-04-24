Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29331346E6D
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 19:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777058854; cv=none; b=pPDXyFUhYzKgsIwiIwrOIZTlZUE++sgxMKCb+kly1TIW7rKlT5JWxcZPVi0TSP6X4uMg4decOpuBksdnSrAAKzDSGzD7SV0crVCNP9p2vvnvqoNFEZhI43qVu6BqFQNWKL3mHAJix4NsZ0uw1sBfDkS7BRbi236+v+rGHM8oxMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777058854; c=relaxed/simple;
	bh=M1H3mhcUoWv24vmstRKS7+hyxhjBJv+Bhb8Jf4AoYv4=;
	h=To:Subject:From:Message-Id:Date; b=WKvEgWgpus4GYu22gNhiFJgRPAajy/gOuMFyBnnoHgDrIGExEZYZBbXXBh5KNq049blZWo17a+Z95fDBTpVlLof3zfVL+BcTP0iZHf5v/pTlambAkX9Wgstom9SltoE+BjQxiFxbHGQYv3tlTA0eZUBjngsnDV4AfdG0z6JD5p8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mBJqxhIT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mBJqxhIT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C10B0C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 19:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777058853;
	bh=M1H3mhcUoWv24vmstRKS7+hyxhjBJv+Bhb8Jf4AoYv4=;
	h=To:Subject:From:Date:From;
	b=mBJqxhIT4In2fAoLA+e0wOqF2UbAlF/v13Fi/NjXkYPpFWG40H7bpRAwUgeUOZK/V
	 pdP3IKTg+CSx7XMkOar+pjuL9IIBQgbhiLiPbFptkb66S0VcSGshauXK53Q2SLfh2d
	 hQ8Mehw8PnZu99ZBuuyYyfIHPfPMLQ+bSw3JZVCnk8hsqLHjmynQWZDhkPVWisLH5y
	 PyTrO0Zvef1JzAreGD+uJagwWuVHcreIeUB+V0oHkoucISoxKjw2e7KOBBil1RPqkm
	 ngxQ5S5gWsF1ivpf98N/rnBvmxWY1QOYeEQSmxhF7pC9zc5Op98HAnL5WvzIUUGuf/
	 AqLUVOdmOKlbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD3A2FED3F2
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 19:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177705885369.18618.6652607060952328554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67cefc31d6a0ac02c194397249198d3adbe396976f33ec030e2c44d9bc05da38
Date: Fri, 24 Apr 2026 19:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777058853
