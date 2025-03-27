Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE2262BB15
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743112793; cv=none; b=YUF0FibdV9GN3eZcYG3Kgg5GHfR2MNL13Y/WqSMvO6g9356KPvGFiKUVI++kGDmw6UoBwPMVTnByKhwz2p/1uYznfKeCOvZMTQ41p0V+GXcPc/wSPrWPbUDRVt9DvmtCZGsNQrqZH2ak1xXNaRgNiXKL9aFN/YnN1yEp6G8I4QA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743112793; c=relaxed/simple;
	bh=D/1sMmVMCQgPHef6Fz9tBpJUj/uHbzzuT30TnL8PMxU=;
	h=To:Subject:From:Message-Id:Date; b=ryyxYn8duFdZI6c454XJBDZZHVd9p3w0P4cKpdfUYHXyxLV5oUWh9iRDFXULMVE5QiPGvtZWHvBvT6Ez+3NRqUzIjtbw436kMao6YP6e3LlqMX2lX3PP3ZiFaBzUrtFUgK+tmjwaRSAxyZNOOvurNwpoCd46eJLuchQGuHvnPZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VtHZAkkf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VtHZAkkf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3CD2C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743112793;
	bh=D/1sMmVMCQgPHef6Fz9tBpJUj/uHbzzuT30TnL8PMxU=;
	h=To:Subject:From:Date:From;
	b=VtHZAkkfU5x7EcTgLsiX9v5FKMmpvvePGpiDdON2K9+1GnufaMIN3PgZ3UVe1xUri
	 dX2xuDzZpPK5e5oWmSwvsiz77BsvSWLeP4n9ve71MiixFllsQqb9A8iKi1t4rmFhcM
	 5t4WpwNolXXnKLD24+jwFDe9gm7mMbDhgi/Gd6fKZy16eUKwxSj/owEDA3AfMzW4fQ
	 zHYQ+/jAh7TXrpYNaecUvM9wj9JSCn7/PUlFbu3qahS6a4CWpZIcncTnDYp8tbeZmU
	 0H77yTPDYFKj5klQ9K27XMWN3XOR4Z+fMVFXsn/zAhD6kYVnMwLZ4DIBjyiO0qNKUI
	 3lORmuPihphaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B12AC36011
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174311279362.8294.8810673653109683937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be6fb81d61a5bf633e8324c29c3dbc333e893669aa07eff4659b6eaeff3808f5
Date: Thu, 27 Mar 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743112793
