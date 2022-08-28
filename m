Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7ECF2F43
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 20:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72E92C433D6
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 20:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661717452;
	bh=BmnsNIRUAT35QOWbZNZYKtkVxsc6nFZ5D/fEJvPwz0U=;
	h=To:Subject:From:Date:From;
	b=siKL+oURjX00LuG7hL8p5LHpxFZwiS3D0sENTKfW3HdnskU3497nImjGVP/5ey7OQ
	 apd37Scuror5o0wU1Q21NOg3ADimzwhCoNWXBVxfW+54/t/aRqa3q4vXRytXU5/q+E
	 E634r6HxOIpayK5ZUzVBsNyh9QBwAkSnOdb6sSo5GFkOPBa9AWum+GlX8L4zQumqPS
	 Fo0arSKdEiAAKUiJHsZGrTCQtzs8GTVWfr0kmkgDWBtYC9eYpox+YP8HiegNtpIa6t
	 d251wkZFpEinX4XeAu0Y2nUa8IDYHzgewkpb4B5QV0bBvY33XiuRTx7eO6ZPBZlsNk
	 YHSNZAppquGfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56CE6ECAAA2
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 20:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166171745233.4844.1345832533420831831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3160555b4878c75fd1a6a4c01505a38296db1cf14e8d37c2af5390344ac56c5
Date: Sun, 28 Aug 2022 20:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661717452
