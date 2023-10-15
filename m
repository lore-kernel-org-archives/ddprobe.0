Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 573202F53
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 14:57:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rgi4z8GD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8B66C433C8
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 14:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697381828;
	bh=0yb4YVAIHLgxzz8+4jwLvVA/1UdUwf15/peDk3xVbQQ=;
	h=To:Subject:From:Date:From;
	b=Rgi4z8GDhJCf4zO5O9bGIGA4p7XKwQVTZ5NhLfg11+8imB20AAll1ai1UAAVF4Fww
	 K64kXI7ixSdeQ6A9VgvEMOD8SSM+soWpQYNwE0IyY+TKa2R1vhaUA4nezYhfiaLZ6n
	 BuF1PYs5DUwr4wVt5mL/YUZIPIV0fjzSit4GaQuhZa5xCDd/rtJ3zt45VcrcbWKNiQ
	 IirCZgoLVGl1oddOvGNesaa0pZ88F6sMQbHOyW2kV/JdNl8R/QeIOzNu2sLkq83PP0
	 S7pNQztxdxiV300mY4+Wa7h6DNZf4694l02/CXdS7hjpDRz7kQKd3uRHfQiBtzlJ4A
	 ALhb7ehQ8T6CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC3EACDB47E
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 14:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169738182867.26152.16840702839411488311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 186e31e881fa741875910596e38c234ae9378c5b135d5d004e8620f42ea48b6a
Date: Sun, 15 Oct 2023 14:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697381828
