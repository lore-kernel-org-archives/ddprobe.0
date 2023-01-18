Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00A7A2F3A
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 14:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D7AC433D2
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 14:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674050487;
	bh=2VnOTou/jl9HDBOoMZutFAEw+bSWK2E4nm75TjUOxg0=;
	h=To:Subject:From:Date:From;
	b=iHCgZ9YYZjjtoHSBzMfoh0eMDzdGrKEL/V2xuSLHCAofeEqpxmqtHCsuoOIRt5Nv3
	 lGnibzXvJg9VdwoPxme4+q4nzyFU2oex3xhvOv9hzdKfBXYb/QxiJunUjFn6JAoBCO
	 XhrV44Byso79bG8CSO6IfbXZ2ZsZa7AtJXQWYuyq29ZpLt/g19EHcA7jEn98VSA9ut
	 REazBow3GuvMONGCIMGDLxXbNKQCBIlIySnkAfNDX9sShKP/aI1hV5cISDazngmNM5
	 Apnt9YJ2LTuu6fAs8tc8tCp5yFGplZThbpSYbD2LYvpGKA17DeitpCWNM4ZGKUPgBe
	 5gH6eul1NORkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 80692C38159
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 14:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167405048751.19154.4586575492992377099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b7520aec3f2321e26d11cc4d88e684a2899a644060dcc379aa025ef2647c98a
Date: Wed, 18 Jan 2023 14:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674050487
