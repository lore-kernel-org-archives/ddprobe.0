Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14AEC1FB3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727484354; cv=none; b=NZBeMJxdBXUGtddRPadisXe+Pmctcu5L5KCkDuJKSdT96Sf4SeIaVxSwZn/jOH1HwWFEw/WSgKFa3evBwUtH3gNo64MLhqAMdugNX9BbQ2DJgV2rUrH5JBYON7+YXxuL6te6+eyBfaPQIoMgihPiQ3TOt9xcLcZ0RzwzIKuwRqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727484354; c=relaxed/simple;
	bh=yZGXOe/DnN7V6ZugtxOOOOL42IwmZLmKSTEdiMH7PG0=;
	h=To:Subject:From:Message-Id:Date; b=jEktmmPL1cNFqpHQhOsHgbUEeim8nc+43kJ1qm5rSB3AxNb5HRDojS2FsfZBiDzmF3LZuEWKTtBNg5qsKwzdf7WAuUZp2sSPToBmcX7VWfZIm1TlXU3n+AwIzbh2+fL22xteiUY1Ms7h9wfnJe7r193D1Nwe6WL8De1G4z41XP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nft9sB5V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nft9sB5V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABDEDC4CEC4
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727484353;
	bh=yZGXOe/DnN7V6ZugtxOOOOL42IwmZLmKSTEdiMH7PG0=;
	h=To:Subject:From:Date:From;
	b=Nft9sB5VCtvxHI0YMDSd0N7zt1E+qMMWHRyfulUQ+o+ICNKgXTAsePWVx5OLBJV1x
	 G6JOOP0kB68UUkoYgRYpoGGUG2eVyfLYyILfdgYzgqN+495wq2FbACtXdGC3wJeNQY
	 khhoeMMUr3Hj9ZTv8Tzc/BGyQ8BtHE6RzhKacw8LRGs0lV4OsfqaCkBqXsPlJ7uipE
	 wpZ+Ttny6qFwNmIzBf1IFZJB+xw9wvN6SP06JgxGNjMIZT6wkPTdNpYqzhH8bf/0vM
	 jtlg2uQlo1yCG5j8x8HljOHCnJHWnrheLY34Ub36pbxkKUQSTA5z4cIRTGwM8BUpWO
	 89IDjQVyCnvGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CC4CF6494
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172748435358.11453.3512692638653043868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6893fe00b77a79d4f4b1d964317ae19eb79f6210f1d6428a4a196db6a3aa139
Date: Sat, 28 Sep 2024 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727484353
