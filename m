Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E40815E5BB
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 19:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778614834; cv=none; b=mgeGm8qTSXC6uYAKekKkLwihOv/NgGsfeG/kg4M4EjVAsaqGlwsk8MoAuOX7QgFUJQNTvZg/icpv9T3wdjqbVdJPy7gJcJNN+IpvmxZxSwxUtG73dBUOODjao38JW9BZ0FOpNX6iTADx/7iYJiwA/bW0a14fy8FDuEAMyQ8TNMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778614834; c=relaxed/simple;
	bh=jK4A1rVRTRa2wm0nCqqArLqbBiRkIXsxXs96CNfXOrQ=;
	h=To:Subject:From:Message-Id:Date; b=NzV/haa1C8Kt7mru0gbXhLj4Tr/91ThX75eyZKOBsepCKTKTFJvgcd7Z7i1dbGGFEmYEVrKTKO6unn2Gjyj9FllsU47SXdq2MEg9PMXLBDsskWQTRDuoAf34bwzeTM8CsuTiueXZ+4csG0DX5aMsf51t0A67smXX+iitk4sPpLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LgsBBiPJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LgsBBiPJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C103CC2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778614833;
	bh=jK4A1rVRTRa2wm0nCqqArLqbBiRkIXsxXs96CNfXOrQ=;
	h=To:Subject:From:Date:From;
	b=LgsBBiPJVJHAzY+0+Vx8bdE4iUU2oFnjhlohDPrmSaq2+CGLuGe4sE1LGdncC7z3u
	 /HhWdq8LtnjLOIFLKd+kDW7Sa1lqw6shG9fshgYOKK7qLBDwFd9VCAwMp8Gqz7mJ0Y
	 UVwXnzn8EN4FuPhZFWG8vdy9uihOa5XkWmkz/iDiOkhN7gXYO0Vcr7vtgoN2NpwDIC
	 JhxHkIcNnUKVWWfCwQ7hObmDb3zQXQLyd7mAygzMuXAFAhzkr2Dar6qdVzxoTq58g5
	 pz5pHyQkKs4TwNIKqSgubXjo1zjOhCHC/LDie7u/Nv+J8Eojw7Iq38Js9TExfa9r8N
	 k//Ta59dUFTUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF7AFCD4F21
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177861483368.6222.15953028252722855550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2074af31beeac11dce16dfe83ff24184efee923c63da5fd3ac0994eb81392fd2
Date: Tue, 12 May 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778614833
