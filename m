Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 088AB10E3
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 17:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769361834; cv=none; b=l8Uq9GTpUuxX3kI1+If8fL0pNTyajaYNM6LGEOXFMx3BeHp0TrOJHwOpk6A4KT3htRmOcM4mxk2f/Q9ZauSj3eCwiRLiOEtN7WSPmRiuOMGWLgsNX9Mk/2Sv2varFuuhtdV1xDgKxk8LWM5ojxIxsO5Jz+S7gW77TKygUTSayJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769361834; c=relaxed/simple;
	bh=bDVSOhw2xVnqFcQrtRh1JQ3o9wpn2vQhKYB9B33+WW8=;
	h=To:Subject:From:Message-Id:Date; b=LMjXJ6Z4N7nrIT/QEDUMrt6DUc9GwDjgYC19Ic15bHnGg7bup5MqlQlFE9kgZwxVgPpEBebhXHUnQgLAnerWmWSwGh3N8Vp96V/UhzKbuiZf5dtPPvl8qPEgyr+RxhVAABp+M9akXtmZqZ8NoUnwXsfhESgMCiItbyqc0ozFdpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=awl4+syK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="awl4+syK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B46C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 17:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769361833;
	bh=bDVSOhw2xVnqFcQrtRh1JQ3o9wpn2vQhKYB9B33+WW8=;
	h=To:Subject:From:Date:From;
	b=awl4+syKpritPLeP/+yReJ6DPDEA1afx6V3PoSE69xgFNpFjQ57umbzlTJ9AwzozQ
	 9+mXZSd/K4fWicuTwhO9+ajEfVE1NAgz5IEB8vAqntq5Jq4ilIqeIo8vph0U9VC26+
	 xSqnCC30WZ16oWwJQ/od9SXif9BYfOGm4BXQ7UmOp0iF+jyUcrKhnA00AGQvni2Unp
	 Gok3zWD7y9PW+r3H0PZQcbgd8Q+KJ9ktWlCHgMgXfJDhZrxI65QGBFWi7b7Rppe7LU
	 Ky5lRFG6v0UYol4Nk+UoUg1fnyUf5iE9iNDm9fJIUHxW33omlvOYMh5r0/seVqXMZ7
	 3EE2MnpXgt/dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9608DE63CB1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 17:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176936183357.25646.11161340942164362354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc3fd7a255d24e077d986cc14bebccb02ec43565a4d3a9500ab7512a2e0e20f2
Date: Sun, 25 Jan 2026 17:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769361833
