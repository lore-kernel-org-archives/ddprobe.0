Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38BBB179BD
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745248794; cv=none; b=bIZF7vP+oxp0iZVu2GVynjQC2CVs4CbVQYclimj+t7PPVUl6DRUAwphNjCQDI/8Bj0xMR2QLpHgUTFaXIZQXwAHNBG6K7TOcicR9iX2QxuMZuFH/aA5cOSUZTt1xeBKMBhsPuv7NInXcUOd/WlGlH997wcgk/gQ04LICf3jsSns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745248794; c=relaxed/simple;
	bh=NuasrLriTVmFoIWsL+ZQ8nvuqFQC6vyhq1xUK48Acog=;
	h=To:Subject:From:Message-Id:Date; b=iDykf/TBN/lFmUDvlqTwLPtZEl0k4+zvJvuYz0qSJHaaVZFL03psY+Q2slxM4SwXhA17AKNHFYI93dxANuz6ELnAlMsUwIZPyCoBC4jYoRRWAQU6A0lTc5R88WCPb5GxQwwCLw7d1i1j1cXyQmm68H7Q7y9P8QrnK4EL6D9C+1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sd/yPPUG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sd/yPPUG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5302C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745248793;
	bh=NuasrLriTVmFoIWsL+ZQ8nvuqFQC6vyhq1xUK48Acog=;
	h=To:Subject:From:Date:From;
	b=Sd/yPPUGT1+oaLHaQ+OQWuCU/O0/WPsUnIQSH4duMq3rn0PnLjs0l1+H36wG/e0cu
	 TmEfwXFkpmEe6BikjZNr/iElgDiCl16JOvYO5eNMQfsCt8hopRdbGez+4hf7+1T0vt
	 thD+o1PH4c3YC8R8vaUXioB2gV6e2ivxxFctIlTZ0cqlS2bBI63vUL7x2/s0qvDNJc
	 Tna/DHMaOzALyqhx1hqmyZTNujns/3GsyTWMF3VjO3sSIvKv85svY4++mU2611DC20
	 4Al4mep6gnwSq7K72YuaLVK5OT7eToDKayZATBkSeSYek4hbJuGkQSVH6NC/t+/gW/
	 9kSmN/R8Bqwvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952EBC369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174524879360.7071.15537557361217162487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aea25a76b9417e770636c4340ff67fa379319890856845d18aab93e8ab1d3c5f
Date: Mon, 21 Apr 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745248793
