Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98FD825C6EE
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 20:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739217954; cv=none; b=qr/GByH/poOMwF7Fq6eOzLS14nGksbvdwt539KeUnWnsgWkABY2+UAY5S+LJXElGx1SrZ+hs2SmDi3cmVGbO2h/Y9eyl5I/7It+1iePWLeU/PCqxVxAuovXpa0WGIJEx+cNH9eEYqC7e7dezVWGY61LR3xAFs+gdMrbvuMowXJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739217954; c=relaxed/simple;
	bh=at+9s+HMNbExMQhb+xb1nMGSads4H5rlTuasDi2Xgzs=;
	h=To:Subject:From:Message-Id:Date; b=TD/G8gdARmkCVJzmy+xMDbdXdgIyrco7mOekW1UDH0UNvZmK0yvwqhkYbBKkdzbdqDsZOU2mL88fF6sw6BEwd38gvlY07lCkhsfnSId0SQL+HQ9GO1JWqIqo+MsMbPa3BPpWvx64HUajLrnWoEsk6smLf4e9jhchQxLS0kDJ7n0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EsNi5Fjw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EsNi5Fjw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 05E57C4CED1
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 20:05:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739217954;
	bh=at+9s+HMNbExMQhb+xb1nMGSads4H5rlTuasDi2Xgzs=;
	h=To:Subject:From:Date:From;
	b=EsNi5FjwGLDaO8YPt1W5yYPSaAWSWW7p+YFti6f+qe+ql2F33f4/1QYyJDnNR75Pf
	 FI973PIRo5BsRsvo4lbvBNOeoH+FfCmNz96lbTTzWb6xtRb93O6VW8KHNbGlZu/4Lz
	 8qlZEUFd1BaHKMMNgULJdgK9aMxKVDyZsL/wyoQaYT0PdRrcoNAJsfwFm/j/MTgZAU
	 a004JO7N+6PeO2Ht3+ZqwgkJaUZ0oD+/4+qPSBJ+chPgQ1bCr2HcultaFDuliQU5hg
	 zttnG6MRPuRAP9Et5gJ1NfRsZEMmHQL2Pmy5KxeCcsULhBFMOE6QumixdMzNL+c7Mr
	 BqxyE+kdxdR+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3E8DC02198
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173921795377.22481.16798076297126554769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff1f7c40f244f2043b6078fd1716f0062881bc38280e29852dce4827929ccda3
Date: Mon, 10 Feb 2025 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739217953
