Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26AEF43AC8
	for <ddprobe@lists.linux.dev>; Wed, 15 Nov 2023 23:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gXgrVH85"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8CE15C433C7
	for <ddprobe@lists.linux.dev>; Wed, 15 Nov 2023 23:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700090296;
	bh=hmxPExsJ9fRMAD+TOwEx2D6t6wyHoDLLswinkGkHecU=;
	h=To:Subject:From:Date:From;
	b=gXgrVH85ik8otvpuvEMMP1HccL7zlJmnr9+9hX8PQ+CG+b4bE8B+NSbal7TOpxved
	 vWi3k5exKiZhCkyWEi2NH09itBHxWBhPQv+5RROenhtnF2WrswxbF5dfPcsZ6o1gWB
	 lK/6EEA4m7erBlIov6kXQMqqWs26XQmRqBfbNCiHPBFuMcXej54UpcbERwGZjXLl7y
	 KTe3yob3xifqmKgSCA8ulZb2iQUycRx76xTvcZlbx/6JOqRxouUdyJlEZ/S2HNj1b8
	 gZsmXnxJQIBIm/lf7zsM/ahdVwUFY4PYFwva9zZb5nmOtZf7SqFYtKvR9yyNJ2oM6p
	 zXOc9MsiOOgPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AB39C072A2
	for <ddprobe@lists.linux.dev>; Wed, 15 Nov 2023 23:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170009029639.32144.9833815177007052160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47261dd9866d6e3e687d0ca505a6f546ee8dcaa2f9dc14204045b3db52c60893
Date: Wed, 15 Nov 2023 23:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700090296
