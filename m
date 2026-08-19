Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 619DD3BE628
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787120434; cv=none; b=lzotKtcYDabk6ci7cYQKHj5OQ8wHt7XKDemOybBgHxYBlOgTrxy7RiqdF2hFCXMestLxsIu+6yW2ggd42gydj/MPFfLOwWoZLWlnVmNYjrqeqxoK4ydFA3T4MwnjdH9921jCZKoeCLN8NwAE47JT/LPJRYEqSvY9Vr3wopXG2M4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787120434; c=relaxed/simple;
	bh=UAv3Xk5cqzi5J8yqRLRnD8wnshwG55V9wDvk0QQZVU4=;
	h=To:Subject:From:Message-Id:Date; b=ojQyNApvBuwUDzbcD0Kz4DGYS9XqHvnyYBWOZzO6PT5wOy6/PXCIn30r98aVHHIuBl3DHUPUveYWqi0q3emikX5UC8GAtMWTmnbIDMsSD6CB9JVs4ckzijVbQItKyNEz5awLl49LkX5wt1tpw2S3BxgSp1Lkls8sElL6MlTm+9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EoS4Q2aE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EoS4Q2aE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBB60C19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787120434;
	bh=UAv3Xk5cqzi5J8yqRLRnD8wnshwG55V9wDvk0QQZVU4=;
	h=To:Subject:From:Date:From;
	b=EoS4Q2aEeaegjj5tctxDBKkkkJChuguQ8WFR/cTyOC28wIgVi9oqsHXNPh6PgmPcB
	 HNp9xjTGSW/xv4UFsy52jPtNAAJkr3geWcbfH7fyw9unv/9+/WYOxHPV2RC8n4JcpX
	 osCBbkR2bFGioDxTV4NauhNepl48EpzMN7gWHtjNsZ/BZpOzU6Fbb1jSELQcMvWzlx
	 UdiwhT7VxI1AHcTFFXzYTQoRXEfBskH5id3hg7gol6lWPjosBl9C90pSqdVSYIWmH7
	 P4mUWMX6tMjVgNnOnXj35ZAg2ytIHlepMl9uR7ozUI4o9s9+eyYuUl2mE+nKApBlHk
	 OoQkzOO+V9e4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDAEEC5B572
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178712043374.29297.6385909822454160547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adfafafd5d6cdc7400d92d89a8042edc7adfca49d290bb4a5ccc9d53af8d0985
Date: Wed, 19 Aug 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787120433
