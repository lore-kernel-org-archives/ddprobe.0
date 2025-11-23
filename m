Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B5824A35
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 12:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763901114; cv=none; b=eU6CRgi79DeluVX6Gt2Bv53TXv1tb8ykrQp/CWAVAITrENOg/EAt17zF/IbJj1mYp4kHvIbeCC59bk+4FAhFyz8Gb39uM+phFBjq5Wjhfb+m2MhdTbE6bk82+cdfkUcGvXJdMFE2PGQrGERA1YTsSHbdO4cTqEJTLj0B2dCqNqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763901114; c=relaxed/simple;
	bh=nM9wcKJe3JPn5zIVjT9DTYNR2As0Jj+n70GbZ6E4x70=;
	h=To:Subject:From:Message-Id:Date; b=bW8HeK1hQgOD1ilnjQ1GwmzaODmUXE+2zt0KcgF6j3MydzX1L+ulAaIsqx7yikdtRgjsdln8sgTljDuT7FN2369diappDfDIUvVL9BgzcXiPW1kMv8T8Vfo+A6888wlW8dQ8giQiH7FvpFKfeXhYUGmv1n0Sdt3RCotTdko724Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bWlXK0Bp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bWlXK0Bp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D30C113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 12:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763901113;
	bh=nM9wcKJe3JPn5zIVjT9DTYNR2As0Jj+n70GbZ6E4x70=;
	h=To:Subject:From:Date:From;
	b=bWlXK0Bp6EZ2xqLRb/FD37prU6JGv1qXppSxmrqX+KP26wWzHxI3+UKAVygpQT4lm
	 Hcfr+/Ko0IdX8KhwdvpOQK9dNLTFKElO5FhYg73As+0wl+PW2AWetSv9VZAX9WBGoq
	 VaO4FekvsTMCyd0Dl6rgDAF0BQtLxy8caVY3N5jYmiS1jrzJ2qH6GagNprVU6puDG3
	 Y+RDnUufbsqWj+Q7mAJ0X3G3qBv/7OZ4lCLPDU5EoMnV8NkyOJmD8u8mt4leesPaEz
	 Jw1+oSqFigQftjR7JZgx9GU1r5/KxkEo94ec+40AM0eGvzn5cTlE8rQQTe/Dqu4H/8
	 G+fpOr2DfzO/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B87CFA46B
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 12:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176390111358.4066.1822633210859953905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: daaf802cdd27c218bd88395a782249d91de01bd01edab3b290594734d2c843a6
Date: Sun, 23 Nov 2025 12:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763901113
