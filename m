Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A8EC23AD
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742116194; cv=none; b=LFCxkclh7tH/JUEOqor8NNhL4N23Ac0B1e6mKnxsxuDgqW8hIe7xUO1/5cw6ABVd1bRGJEqnJ+zV3cvWzAPwqlHtrsbt86LWXWkiuz3vbq434fWnz+qml2mSTq+4SdziSE+uMid8UQLf1ce8dVBSkMC6cuXnIuUnVtolVlcebcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742116194; c=relaxed/simple;
	bh=EiqWrfYrwH6jcktZhLw6wWlQn2rqxQCH4P7BUSwe+KI=;
	h=To:Subject:From:Message-Id:Date; b=qQs20+OJ2RKKo8WRfkFnLbIsUaxVfWTrtixRUH+JxTpxv+DZufSb+3R77cCzf3NdXom7UIGJ4Sh618qhLv7zAL8K7V/0qzWKuNqJSOVEwY0adT6FHYXpXB9zLd2y+MghKwVy7IVFZhG0ADF2mo3xWK+CX13s9u7DnJ6Fri0Vqok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RDsPIv0W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RDsPIv0W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD8C4C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742116193;
	bh=EiqWrfYrwH6jcktZhLw6wWlQn2rqxQCH4P7BUSwe+KI=;
	h=To:Subject:From:Date:From;
	b=RDsPIv0WP4FFtCut2MoBM4+AbjzsDCqqlcBrNgFJaNlRbQEHfg+/2E1TmQapysFJT
	 3I7vgwqrWOvofNvFzXDaci/0tx8bmZQQnaCMRjKINKhMNPppzlHNSKJN+n2yHwJIkE
	 Y0x4KgjcPhdBjLCkzKqsKx+1iZNiAOMMWr2KQ6NkvFC/fONv08k2wvrUkDDMx6f6Oy
	 skPRVJaOUrkPWltDJXWxm9uFuJVl1ttcYtO0npSc0Vt5r0x1I0P+eVWWpb9grd2Rm6
	 So3PoFn4urHdcXaVkw5EQQk/eqMxD3Rz0Bk2/BWSDJefAgyZNIhKkypR1sJ7r2at25
	 dC/yaDZNg9mDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98922C282DE
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174211619359.30769.14183537147818319744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 425b0e09e93552707b1da1df64e28f90b2cc310e951dcd80d9fbe3bc60a6f05a
Date: Sun, 16 Mar 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742116193
