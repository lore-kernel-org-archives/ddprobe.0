Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 003C61877
	for <ddprobe@lists.linux.dev>; Sun, 14 Jan 2024 09:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FBWFVj3X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C054C433F1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jan 2024 09:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705223296;
	bh=BSJ1ZUuHz6R5jkY6rBmeopy/x+uUkHar4ngo6yy5reI=;
	h=To:Subject:From:Date:From;
	b=FBWFVj3X5ny2Y9HI6SFCI0CWKBeFGZjRUnS4tnsrzYumMBRWuvmUX1cCO7/H+OZi9
	 3eJLCh+1zQBCIkBY11DS6pHfCuFRKRdEUaDO12AFeuIkJB9l+eSomEMcrqpe4JlSIL
	 RHMqmwS4qDeW852uRPF3wq+ZaVtYKr3/CMcCURBhwqKACIqvXBiIGfwd8SoUE/Wxqu
	 DFc3+/LhjPvTpVuCAv409w/sFIsQaR20Dzgy2f9P4TMd5sMDGl0YMvz6dPnRdbUx7P
	 yCap6F9p52mF4g86c1apGQRNuhgUzy8cTTZ68B/8GtThmatzwuA//kfiv37/8qTcxn
	 jMMSBB9SYWwvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D209C4707B
	for <ddprobe@lists.linux.dev>; Sun, 14 Jan 2024 09:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170522329637.13167.4283244000060099375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f517bfd381625df23f2a7168871fca887c0695b77ed9e97a0398a772e5ad42c
Date: Sun, 14 Jan 2024 09:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705223296
