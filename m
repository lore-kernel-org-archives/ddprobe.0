Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 387B578C9C
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746887394; cv=none; b=QM7ggyX5ANurBdayb7LuB0A/Kv95aZjC/N0SeYGIcstECKzojHsu9CcyA8Zdz9RBgbPxsNm9Efby+/Z6OLALLYkllGbcegN5eReNQWVwdzfzcz8a9s5pY44EDHlucyEhFnPyT7zQJx8le5f/Ap7QfgkAenNJs/nj2eH6LgwnYws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746887394; c=relaxed/simple;
	bh=kXbSErefX40cuIDp5DzS9HURhjRBNWPAwTB74j7YPi8=;
	h=To:Subject:From:Message-Id:Date; b=lv8eAJKdpd+x4iE51TsfG4AHQb3FdEcar3BbD/q8Ml3vsGaqsX5NmzycwqBudQoWyus3RAfFSoY763y9uQdOhszgZrEeH2zVb1e9p9yC+T2Ywe5lTkjy9+pFpYnSAO515Cf2XwBdEvgzRD9PXFqCKV1kEiaqY+nGwiZhC2eWcBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i3ZeGfzg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i3ZeGfzg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A93F0C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746887393;
	bh=kXbSErefX40cuIDp5DzS9HURhjRBNWPAwTB74j7YPi8=;
	h=To:Subject:From:Date:From;
	b=i3ZeGfzgSXuHMxiGd3oBgSv0gFfuqlI8m6tZfdos00oXuIcVH9TXre9WTNTlW/9lc
	 4wAGWntTaUVagap1ie7M2jVigA+oyxqy+poqN4zjrwsApwIuAT6z7dzL7FET7SrBWA
	 XFmH/weZecxnaKmTwaS5h4nfpgPxksrS2IjSEp3mI4LX9RJfukwPyq3v2PEZmADq8L
	 Ow4UllTz7PQtwHsj/wUuLlDIJFRa4m7Vbai57cDBYc6AC+E/LeufsdVjVXQuWRzfXX
	 UjCyqV/9C20HQ3V22ofuJ+2CGVu9zl/e/L1w+HWe+ssQllHJkKO+T6osLs4OwD1Vsa
	 GVnLkxfKBhLtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955DFC3ABC9
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174688739357.23967.1184340373031679320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d356ca3cdfe46b1f877fb90e9531961acce4a70986e70c93603225f6032f4d21
Date: Sat, 10 May 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746887393
