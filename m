Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A402241E0
	for <ddprobe@lists.linux.dev>; Thu, 14 Sep 2023 12:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9B67C433C7
	for <ddprobe@lists.linux.dev>; Thu, 14 Sep 2023 12:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694696048;
	bh=97K0Ki5Jz34yRU3SIQWGOp5NE+gurTKW62Un90PjSJ4=;
	h=To:Subject:From:Date:From;
	b=drmE20mKVaPIn1vGpr3PSgQZJGXy3GedlVii62CWOgDjWGpABDxAFx5ErIrL6Hx5Q
	 uTRyu301Ybo+I66iSPyV5u0V4LoZEdFH+BllFzlcZxr69jZGXpruZmbig0ssr+sfWg
	 iR7YAGsGTiIjSB1mzuCAVgrEhb2mUF3E1o/Egzg3APmfiyDECbD7I5c3BwEjkVfI9g
	 pBf1qMTSXtm95uO6VCyJvtsQ/Gt3+Fciry9rjJb0VvvvW6+qkWYfc1bLdBTCbQ3scQ
	 AXrctCDumNI04dPm+d3xiyJM0e4M0rxg/piNoBoespGEsoHzZgEWJhLLXvakK326EC
	 ubLmqM3OT+M1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B75CBCA0EF6
	for <ddprobe@lists.linux.dev>; Thu, 14 Sep 2023 12:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169469604873.20410.3749688385295169894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90b0fcabc590f384137775a47170b9b5c68701eaea30337a561c5f09e645871d
Date: Thu, 14 Sep 2023 12:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694696048
