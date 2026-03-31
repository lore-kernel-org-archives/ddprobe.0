Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0F872690EC
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 00:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774917893; cv=none; b=gb6i5H+I8d9pdk/89lqTtR1czMoiyjF4Dqp3kLDfA1z2exw7qezJogHuPM+B6a05T4UdtUrUZH9J4R2iP7h/hHdDtjX9SPHDv001B8ghuiuZLgtVTp0Qu5NqwnhzR2JYzIw8vDLCAfVVtxLNFlMlPtWWec59J1fphFIBNrwxLBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774917893; c=relaxed/simple;
	bh=seWbw6XYW3kYNxS3GbtHMdBgw2Gby2rqJdsoQgNErZo=;
	h=To:Subject:From:Message-Id:Date; b=pZd7okVL8Mag2GNnd5i9JXBoF/DViy/Xnr2ULg/4ULvO89c2Xd3BAfPZs9CxXl1n4Hh0n24dU/ztopLOpdmSN8/PAAHR8qvsfhLUOkGyfmX3i5Bw3GnQ5O/ff0PPhqJMIqcUilNAcoXdV2CC3sFzk+sqqa0PwbkrIYb08UqXZu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aGp2Eqnm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aGp2Eqnm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1520C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 00:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774917893;
	bh=seWbw6XYW3kYNxS3GbtHMdBgw2Gby2rqJdsoQgNErZo=;
	h=To:Subject:From:Date:From;
	b=aGp2EqnmclA4WORPd0XaxLqWsB9aQ628FiLj/P2HFazMhJhX9G16GG/2Z+M4dddGC
	 ixeMcFVUacAyo4sUdBWENFdB4Dl+UewC2xpKe76byWVd9O0XTQbKR2J4hrHuRuNDKd
	 1fg63tU1hq2Bs8A+pU0/iYQ04GnYek0OvRMSSEniYt9ffGV1d2aeoSILnL71RHJEpY
	 FQlbOpeyXT5hsUdsS4e+Dqs8+9aruYLCAzlyyXoL5vsSvW3wQEli/BUC0HT/N43Sr6
	 6hFYOAj/8JqbWe2QSkC+rfsSJu5p5lBlCoR058fMr0hYvTuvBZ3Hk1dWTaLRBdTDAr
	 4y4wjz/lPKpzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908671061B19
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 00:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177491789358.15735.17882013593682799532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c95167778ca410e0c9462bd45e0a71d4cbd4155a4e9fd360e39b9e708f3c4e75
Date: Tue, 31 Mar 2026 00:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774917893
