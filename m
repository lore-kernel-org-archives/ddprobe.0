Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DE405025E
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 09:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718530703; cv=none; b=Aagi4M5ne3wRLuSBUuk9tTJLICk80oJeHD32mv2oBpyjYKLq3Bgi/9yCT0t7d+FutmWGvzjkLRrJnMwmogRKc91vhjHpKzA4qADkfNA6Pmr/SrsUof51LNUGG4iZZqoMddE7Z4Su9x1kqlTysOHVUg0xfpR8wUbc7uQUYVAKYWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718530703; c=relaxed/simple;
	bh=DB2QsCZYkoLIXuf3ksD/c5uOO4mXg9HUtXngDQKB5Es=;
	h=To:Subject:From:Message-Id:Date; b=Yygi/VyrrKjrJk8UuJz6j+8h3bHKHDehLra5uzy+Fb42V24O7dVB8m6/7crsh6/xBF4pFceQDa5iyjuuMPvbXxR8x4gaF/cThB0Zgfi0ztgxw8G7HV2Chxs18j7JQBSy6luBrbigjPlA0BTgbG4TzDKjfty884gWk/GXxJyKpk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XsQEuyrN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XsQEuyrN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D94A3C2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 09:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718530702;
	bh=DB2QsCZYkoLIXuf3ksD/c5uOO4mXg9HUtXngDQKB5Es=;
	h=To:Subject:From:Date:From;
	b=XsQEuyrNfHcFFnwxdqa0zl8M69/5hXL6QxK9e7fvs40B7URv5Tx1pYR8RNZidMdpY
	 vGu/BtBGXf+jBSm/jPxfAzmmqv1nLk3h6cn44poUvs8uDGigH5qr8f0cEVnKSV/j7U
	 St2R8kSY6lM8HqAd86MiU52bzUPfPrk1zJApPBRdKdKNyxetNmHAXjZp20ZkNGxrWg
	 8LVeYoJ7LypdS/mja1WHPR7kLlpSs+X/Inqm5PAgua3xbdvfOA0dKppBGroF4FrhqN
	 NJ8E3djc5m+2Gp9SUzuATSaVGG5zDAuDc6/WbulLx8XhjHycYjIzQvegtKUpS9hHzS
	 y2kKQUb8p13Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5F25C27C53
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 09:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171853070277.27972.1622107820448091901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88a250dbcfd08d7794dc6009776a903d3165472954363205284c0d2b202b50d7
Date: Sun, 16 Jun 2024 09:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718530702
