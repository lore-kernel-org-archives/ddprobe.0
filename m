Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDD492C85D
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 12:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712405896; cv=none; b=onPBmRlRs/2+MOzcnv+DFgTALN6fy7Ke1mBzeRLRkDCcKwLVNe97gxVNZNBBan0SJwhjeJFcTm90agdbBqY0nt3/uqecZoZphhpK3M7KagmzfMdzDhGdgLrWHdD/u0lTYbXuF2XG/rFGsRPAjwVI6RRphSeR3Tjdw2Jnwkv6JWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712405896; c=relaxed/simple;
	bh=xsLk2jX31FmqwwRdrte0EXOg5FxmQutCDy2UX3vKv0A=;
	h=To:Subject:From:Message-Id:Date; b=Y2pqoKZIRqqMi+cywcLXtAgungTKv/WBUaOWYnrZyQJMNuvbVe67NhzKbRtAOus3gJ3/G3W9ofqrY9nPD9UGvKHkQ1QBuHNnTyuDMKh+zo/wyPnhUMu/ZnfayjxKE0fC8YtaFj85GFs252q1f5wXjvQ7jyLAqk0t/NL8h5f54OA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hN7zunPQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hN7zunPQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 748FFC433C7
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 12:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712405896;
	bh=xsLk2jX31FmqwwRdrte0EXOg5FxmQutCDy2UX3vKv0A=;
	h=To:Subject:From:Date:From;
	b=hN7zunPQ2H4qcMVYZ4f+PiemfrLLrdm/icmWRXZRfKzHws1ENHllkHv/0M7JS9950
	 aH0L0I7l8QgTD0hGgdTxU9EjViIbBGtCOmcOQh/QEcwRpoacH6nfgPzvKFUPNvc6F3
	 1Y85vxpz7Otma6lAnHNmtFzDo28NV7cowxIc5+jt7kpYqN6P18Yox6W9Gdi3kxADLt
	 IpMYd3KuLiGapxHO4d/yS0F9If+vI4YrJJrd+NVzw3Ottv/9V5bEXCnUwufu8AEkZI
	 9bhNALiNCsalzk1i7muq5oXttYuegXb1kT+EnIh6QLp6m9eS4rr5XzV8yv8/IQenuK
	 Xf7AIkb87kDJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 643F0C67861
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 12:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171240589638.874.9868901929961812854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8114b71f7857000f4ce18660925f6cf9a2b399a03bb8e03be739b6aa2506ea57
Date: Sat, 06 Apr 2024 12:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712405896
