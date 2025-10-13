Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21483DF72
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760344194; cv=none; b=VAT0I2q83ItAXqoH2Cuw/ycqxkHbbYFEaJtvs3AvM5vXez0ECA6ewcVAMoIwfg69+ZeliUyferq5bOTOpNiRmAyzyqYvYeiTRhkECo5oo4vvTaVRc456TPKDX98BRmkvTJcJ0f7tYFQhoQlyrACiJ4T6i91D6NdqAaiIKVYbwR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760344194; c=relaxed/simple;
	bh=QO0qwuJdj11UbOYpRBRvx0JsYTf67x59tWKqMuEaAFQ=;
	h=To:Subject:From:Message-Id:Date; b=d77Fvhq9WuP7KcZlAyDH26LYwsCzB6gVGkRLG2UUXuI4MsOCcBmD3DfwWkc9zVkeck1N+0CUfYWvDKfEfTjRd0XjWS01YS8a1nifG5+OMTXunXVj9hb+LpDYZu7Z7gixvjdY9UcfJzKcKWmBI5aYL4964CIR3q0KV18TzPwLjps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qQHbCw1s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qQHbCw1s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EC99C4CEFE
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760344193;
	bh=QO0qwuJdj11UbOYpRBRvx0JsYTf67x59tWKqMuEaAFQ=;
	h=To:Subject:From:Date:From;
	b=qQHbCw1sNmIu1QgRoMlBH9c0oftwvYqjqf+bAwWH7+4pmfJuWiOpi7eKdPlX28bqv
	 XWnZPUnKyC57TGWye7iuyKxxs+ESnrXxZZmsPyxyXfIaP61TjxsBaxhmCTsS5AitlR
	 qZQ35t9vb1926sys2BwzzT43A12BvK11ROTVs2u/QeDe6OsGE4IB127dGg/2Spq6OY
	 QrUPR+WKV34F9XbSIi8uvgrrwgyROLRpVc5BByPMOTuVTUKzB8RD45xhHPNjyEGtq8
	 LitPFPRUAt7bXiT5Clmy7HjvyGQxKBICSqh/zELVue1FPxfKDbgr7cNe1gFUeXeMP+
	 10qpMBUNZmeTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F09DCCD183
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176034419357.3830.2690856508480331742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee8a015d42569bb73735660dbb09104c6d16aafc1d7a51f299550654dbb057ba
Date: Mon, 13 Oct 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760344193
