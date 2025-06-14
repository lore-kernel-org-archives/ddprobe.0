Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30E8F7462
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749941394; cv=none; b=J+vKsior97IRSXN/zTgssgorpQ7/O2wOjjALYveGIkmjzIsfD5TfLTwSJ3ClO6IvNU8ThkKS3TzOITYgbAyoV5Ch/M7OSCreJXc9USKLn6QBthrJKEqSEIZerRuZM9VMHpjXx8CP7pin5ziKlT6fv/CfZlD4Fgbvm8l/5cpDN3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749941394; c=relaxed/simple;
	bh=g+x7bQcT2eAIf9ptGYKr3d8llMEubz4OHqpT775WJ1A=;
	h=To:Subject:From:Message-Id:Date; b=lVz2e31NUEkXV0ycKnHE1X0Z3x5q51lTCYIymF8gPYp73pMJcrNG2uSzIBqy9YWQoMbpvP5GJJgOPs637qAGmvIEg0sSXuqG94dc1BH3PHaWKc5nu1rvPvcqo/kJTeadDMX/trtdo9YgSj6NGwDrF9DnLILbRfuvrBghs+jhvr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u4sHzU1e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u4sHzU1e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A8FC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749941393;
	bh=g+x7bQcT2eAIf9ptGYKr3d8llMEubz4OHqpT775WJ1A=;
	h=To:Subject:From:Date:From;
	b=u4sHzU1esx48scAsrDhKbXLpf3Or6GuTNrskw3ItG2xwvfIji/WxD3RA5E96vhlUv
	 /y/zfg1a9/7Zyjz04bs21K4IXVmhr6V3JMyS8yFImX31ASmn6fFQ0fL2AdFvDI/Qd4
	 rZz0G1G5SDwcwYGYl66UOzT32G2hY9hQG9HKMnpn7nfVpvT9KopCQbikEl8f2r4BTl
	 Etb8bFiWfH4tsspKoX1PYs8sAHzfUye7SxrUK1B3hzQfncy4InFK85FBegQGmP9r//
	 Fve0d7aJ85j7ydH2HEyt6ogRzPWfgA3HuDJkJJbFfWSjNg4PVi10Svv6EJQPTrQHCb
	 kXPevNdkkgxIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95821C7114A
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174994139357.8709.15407328510401793052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 178913e6e4926a9ab527aaabc9ae3be8818def9f1bc5b21c747e4b02119f16bd
Date: Sat, 14 Jun 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749941393
