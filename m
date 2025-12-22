Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A8DC2D6E5A
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 16:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766421234; cv=none; b=MGc3pE5UVlGzx+UnuJcKiwHM9tD4BByErGGRmKTTgSCLBWFqlSPBfeL9iqVS2NheQo8aZnRhVv+6sbQp1QNDNzZ+WqdcJyZTPRDybvKzK5cUo7xup9J88xHJ01kUexr7LNg0R8lI4lRSnXtDD+nfzSZv6NmAlMI50Z9y6Ic4XG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766421234; c=relaxed/simple;
	bh=CrSUmhQT4qQ9fkGbET6JJsJW3gaecyqLgY68B5aKebc=;
	h=To:Subject:From:Message-Id:Date; b=Em9m/U87pi3BNo71xkPTnwTsaIygBDfgdwk+JrNjRNhi1uSp824iVi22Qa//85tpBUSA8kEPkWLps8CP7nwoe8WrxIZUUlTYvpxZYPXij8ZBrj6jtWMWiuW+zBx6QbEXKLG3DKhCcsInu16zIoXI3jp9X9mW/dwEYLZ4X/NBHwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nLBUxkdo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nLBUxkdo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A4FC116C6
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 16:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766421233;
	bh=CrSUmhQT4qQ9fkGbET6JJsJW3gaecyqLgY68B5aKebc=;
	h=To:Subject:From:Date:From;
	b=nLBUxkdo5CYdAjsr+PgbmYgAQh4PzDvFZiN25OglyBZjeu9ApcNuZYfUIkrOwN4ib
	 dfwDqHOSN/4McRbG0KfzAaqnG02F8EgHf83aO2WUPd8EyCx06UI0v+CrlEuJmVZHB3
	 JUPFo4t6K6SEtEuv8+g0OX30gO5l/pJOP/vh1IUF7emGIcttjb4jzoYdPOYiVS7fwb
	 ezADv1Db2G4AuLhgicxVHni1KOXDOZnFN7ubTm3vRQ5P/VsFDKLBwak2bu2tk1G56d
	 4f0NPyCeec6JfXihuiklU6tAT7dUGhJ3XJpHwUku0y+Hlcjhk4MBV7JP7MgH3+f3jB
	 lUctJRBZ43XBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935B8E677F2
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 16:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176642123358.1598.13072485378227765129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4052a2b18c33c0fead49cc02768d466209254ca60d085f587900cbbe9dace7a
Date: Mon, 22 Dec 2025 16:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766421233
