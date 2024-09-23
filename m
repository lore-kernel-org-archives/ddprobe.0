Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 166F8194A59
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727094954; cv=none; b=rKog6rjNFFtphgc6T+EuFIW4JEJDJsMZtlh7ZdhzUXIyS7i26mRcxIrrxx3K7gPPdqvESWSStGgSmyK5SONXq95GSFfYnvIYKUcK6k6M4nUdXo6nGOF+ByqvUoZhSn25yD68BG/K80QTdZHYgSnazRIBAb8z3BkYQlOHSUDY0p8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727094954; c=relaxed/simple;
	bh=NYzAMH0T6WdU6Q6sMcelBiCJvfOZ6ahEQOx5Gy8H44o=;
	h=To:Subject:From:Message-Id:Date; b=RhatKuNT4aDtQ2X5d2OnjXL5/XFrSqQHNjpShndaPQAMDQyhdLyCoIH5eVZb5UgR9en7meoOZc4N0+mLYBwD2PC8TKIwpI7EifoDlce/3BFGKLHI1FTgMEg6uOYPe/WBq95BJw3qBHcZCSo/95VslEnudhi48s9xEjnY2VuGC9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R4ipUhiH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R4ipUhiH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E3AC4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727094953;
	bh=NYzAMH0T6WdU6Q6sMcelBiCJvfOZ6ahEQOx5Gy8H44o=;
	h=To:Subject:From:Date:From;
	b=R4ipUhiHc1kVUx4o6Yptp8NR9/M8MPkPkGkJtA841Sh1/qkyBD7O4doAWHolkWahf
	 1VtiA+0aBZxTf7ZbKrzx+yPNNEnPLOz/QmgXRUkXGLM73EYlHe3lNnXZzBVlM7yuX6
	 +C3h7UFfxT8cHfUacbIE3K1wczIaeCKSF/La/F+g22qnPUrmo9trYkQTm40n16KOw/
	 GcCBz/Y4DSOvEXrrh3hBbIv/slEDXWjZOLntsQ9h5mJt3rotjsubMqEmN6s2zcVCGA
	 PaNcL4NWHeeqOj8x+j2VYvpaym74BMf4GTKHYVDiJVlpE2Y4k14HZlKQsMQ3zFGLC3
	 XW+7ZJ+hNS2oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E07CF9C69
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172709495361.18037.12858698650315924418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f57b237f427f3428e923cbba19250afcc127a2043093ba57833d6859b21201c
Date: Mon, 23 Sep 2024 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727094953
