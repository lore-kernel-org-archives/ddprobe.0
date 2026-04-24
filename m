Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBD0A3CF690
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 12:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777034854; cv=none; b=r6QBo7k6CpmmM7dMjLxEay1bNds65rdLTj0UJRzAEBkKPoF5rfecgkD0AYy6+RFOokhk0MOA0tIQQOV1TvE3+qliLmGjmcBLVj2mjW5DpgjHQWuNoPaHmn422yNLCWNr3wmck1h/26hD5TrL8uw5FXnnls+1TxHmzS8bT/fws5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777034854; c=relaxed/simple;
	bh=xPloFOJH8YNUCHoBbOomnRM2wvdVCuSDNTYMRu/h2zM=;
	h=To:Subject:From:Message-Id:Date; b=pucqdyTs8A9aJBao/ORY3sP5CT4Pld/KKeLc28g4FErBoiZtsWKMWuSMBzXCrn2+zxGvirfDWJFR9kv0sKUBaRTF3JK2ItdqtBskM2Bter0i+vfYDpLjbgEtn3bYNiova2pVWv0pK7GBSqQ8Wp9NUHe2XLVE+SZdOezCTNEZaes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E+rRHep9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E+rRHep9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE824C2BCB2
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 12:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777034853;
	bh=xPloFOJH8YNUCHoBbOomnRM2wvdVCuSDNTYMRu/h2zM=;
	h=To:Subject:From:Date:From;
	b=E+rRHep9oE7XHcnp4Jk4lHiSmOBkmFNFgu7n4vuxCh5tTdzblnyfEcpS+1qG0o+Pd
	 S8Zt6Ury+Z7LTSqUYwnmfOMJAEvwRLnOR5Z+oGbV9S7cWXR20WLZoucxkvg7Jeuo9b
	 J0Xyzl/1XSHmq6L2UnRt28ngJKWh4S6QFQ2M1i6Z/YsU7SUXga7pSbgwVxhM+6OnOW
	 hlrG9PzvG5MeVJ/1P0JkbuCAMOsTKxPIGiPqRRt0kOrngST5f0Krg5HB+j04JHq53i
	 ALQCTeETTZe3wD7oj4JkCz7XlVGt4dEwdqqXQfoz5XllMaGHQs8VnlDeuj6PbHoUY3
	 F20aklckII+kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0243FED3C2
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 12:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177703485368.27296.11514241140545826372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38c5cda043ff2febf1b2fcd560a9d75578e0889517ae574eb0845896ebcb3798
Date: Fri, 24 Apr 2026 12:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777034853
