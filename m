Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 143F6228C99
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756561194; cv=none; b=gxF7MUFhudV4lY8P9QdRhb4GtI/FS0/4OHLgj8LB656A1szLFcGbeuVGYIizqXGbI4dufVBw+StYeg53xuf8nnvtxdQbteFjZ647789abqh1aAdb3HDGAUZhBIIQ57asNZ3cmUw6Fwk+JKgtp+ybKg3qgz2b1OxSXeel9D4EM/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756561194; c=relaxed/simple;
	bh=lA6M8B97ROPxfVRThrQkaYlDkkZPdEuW0Qyw1T9pYq0=;
	h=To:Subject:From:Message-Id:Date; b=Uy21YknDpII+yMpvuFPhkJhhjd21QK+orMtoetxoTGxpiUnuMSIKsMD4M0ZOGTMf7TpWyiAtkhfHHyXs4NnijHHq+HtdiSF2s81LQdq6wax6G7VxU6v7+/E5wSoTW1jDN17iaX2tFgeN3TXwhnVdIP4Apm7iyv7dMQ1aIktg2sg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cABWOZ0Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cABWOZ0Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B684C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756561193;
	bh=lA6M8B97ROPxfVRThrQkaYlDkkZPdEuW0Qyw1T9pYq0=;
	h=To:Subject:From:Date:From;
	b=cABWOZ0Y2tnc/fzbSXcEgMEnoP9ODBiNlbOG3+Eqyz7QUrqZbUbpRaEi4hFRhqfME
	 /r+7un2i8lKEbWw4SVhOUxmekFxB3a4YELZnsAaa8Xx8l4YAsHGo3KQNsXAsEgyad7
	 QSUS5NwxvBz54L65cF/0KqSq0GdyBdSJusjT+qDrxvcwOlgpZOSpu9mAjsIYi8Hvmc
	 vv32Qcowwsw/pcItRcCwnOWx5tRp0Ka5V/rlisEeqUcg3VOdqr0fht4XORWEPJAsY5
	 1n+SQsY6Fb2wZZ865diU+5haansyI8wo59U7ZGkZpCNaYqzi94Z77yo0Xr48qG75KY
	 VoB+gGtjSNgFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1EACA0FFD
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175656119357.12746.16075188387751448914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc356fdcecff84435cf839843998113d7a83def371710f64b75088092d279ca2
Date: Sat, 30 Aug 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756561193
