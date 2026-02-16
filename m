Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2035A86331
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 01:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771206894; cv=none; b=mHtsNyfOhf2ZneChEHkaN9azvHpRvdUjFv+S39KF+WBfJPkoIt4EEEHH0pLf1sHURFD1kmo4aRcUsvL5jzHnXDu4ufJ5Kc6Y3kkx/hhSrL8U51oXUBw75kBwef2G2uNTkrs66W0w5f+x2lpsZl7LB0HFWc2XAeVKCB5bnXAtjDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771206894; c=relaxed/simple;
	bh=jbRvWE4RA8MN7h/H4RSfZ3n+R4OGwtsvdj9XH5+64ws=;
	h=To:Subject:From:Message-Id:Date; b=cIYwVD4Lg+aNs8xswGxc0wlSxkthan44GnH4ir9TdJ62M31ikRRn8Y20ib7UhHRXHiNNL0p8jrursXgDPAi9LtM3ngXI5ceFIjVQBVBw7hYaWMJtUBhzazAH1LvhWWJX2Mxy90OJ6t39tE4WKlW3hJz47Oz5ofd0w17fiGqtZS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h3MGLXUE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h3MGLXUE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAE48C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 01:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771206893;
	bh=jbRvWE4RA8MN7h/H4RSfZ3n+R4OGwtsvdj9XH5+64ws=;
	h=To:Subject:From:Date:From;
	b=h3MGLXUEv9Z4+2BWwO/6W9WDN9bNluc4OZVJhtG39mEKjIBuJDp/cyZ26Nihwdm64
	 oty6TkAgtEN3C13P+daLgEb10MYeH8WRi8vNAKfAWm28yDqQUCe8bzd7fLGTsQrw5S
	 r215FQfYCeI5N4S3RWEHzniS4o9kvZSLlSDT39GfxbeLS4PJV1PYNLXEfx4Djm+4Tl
	 6iZYBcXUfnywVwNFDSKJZKulUMCsmrQL25S+AfP4xt5ca5idnzIUcU6CJhPCvFkkAM
	 kWjkHM4Y+s2FkXf7Xnp31AR8UBgqzjTcaaV2l097KzWpZh3WWwRH1m6Qlpl/UT5JlA
	 ui/5vIMXXbhyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A09B4E63F1C
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 01:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177120689362.17145.9450282374591125507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30271234ca17336c4fc8722079f5fd7b22d53189748de358b7172f5c62610a42
Date: Mon, 16 Feb 2026 01:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771206893
