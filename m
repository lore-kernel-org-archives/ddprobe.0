Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19E0B24C07A
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755711594; cv=none; b=a3Cz6xi1QVZdAxImChCeO39yHVuo4Yy3kCv+Dqz6KtwmjMxANK5t3TfPsV4xK+QCjjL8D8BAOcZkmC+gsGagm0j5Mhulq2a+hfvCMHUtRUg6NtozFWaQCxt6iDJBAkTmoNge+8c/pRm42PG7EGYW4mIUmKmHUJJdS4fOLba+vSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755711594; c=relaxed/simple;
	bh=K2uFcIhCsIhMBNqgW7ENCSV3c5TDJEm6G8NG4jovF+s=;
	h=To:Subject:From:Message-Id:Date; b=nGXiHwttEgIFaaL95o/faV26Lw68UW1kaeuzkDaaLXGxI50P4NDn0edshdMPt6q491Kq8cBTGydbvSujYLKygVpwjJ6nruPhKUs5axPSyBw7M8VTdwnVJ4gVEW/8fpubRoD4hIUUyjyOQdH4gd3jR463EGe8W8qDEtstIe9sxVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DrldeTbT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DrldeTbT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E89DC113CF
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755711593;
	bh=K2uFcIhCsIhMBNqgW7ENCSV3c5TDJEm6G8NG4jovF+s=;
	h=To:Subject:From:Date:From;
	b=DrldeTbToP9M3xv1VpxmGbP8mvlPrrYiJRc5ar5rM6y3DRmtlQfdrxBgOl0yD4dWX
	 oDCnpqmJicH2VDV17wgjlJP6KWq27BNObgy/R8mxy5x68c/5Mcmk2uB77lTTKLebJS
	 wuNjM0EAR5fsgId1VQ+UghvXq+2q9PhOFP4Rr2Qm/TKTGl2Y7zu3U2knBnJ1UPgUdS
	 vRW3J075qEnABnktbbDhK7MjjDq3umkNdfwquSL/g7rdhVcaOOUzDLxHN0C9QJAOLw
	 NNyx+QYywxl6YTaQe7miWpzRaWvbIDBQvnyCE4r9BEkJTNH1nxdQ4CNPW5Dg9wIPOm
	 0j+l6bxajDoUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901C9CA0EE4
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175571159358.25336.5866242000644170944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5beef434f205e9de213284085e124e27220bc26bb88ab6ca67f568c9d6285816
Date: Wed, 20 Aug 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755711593
