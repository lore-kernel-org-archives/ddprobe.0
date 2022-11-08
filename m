Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB3552F3B
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 15:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 701EDC433D6
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 15:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667919654;
	bh=ah8DMH/YWYUfYcyiC6w7bHJPJ3U+fqZ3VSWvMdFP9YA=;
	h=To:Subject:From:Date:From;
	b=F3b/mgGSD7oeu4JifWqY6fcPv/DGZaEelbmLeCG30wsC4ya8FvX+p+vk9S8GTPNPh
	 5wAajwRUymDyFAE6OBvQ8jrqk3xKxJPRiC+Gi24jz+AzIUsJ/Z360DAJ3DPH/GdjoB
	 4NU1L/Low8prQDKAUNyJRRezAHiX1h78VpdO9NT08YTP6LV5WE32RxI7aREzcuZ9W4
	 M9vptBymQotizo/kpnjqG5k1B56MyU3ciQtzqOomWb/9koxXY5MLtOnLi1SW0jT27n
	 D05NZtxuEXNjJSw/et/+8DUiGfGeuDrGQPybv47hLelcxWU3Y2rlV0oUHGQ4KOWABK
	 NQUaSwCv3hbzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 506DAC433FE
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 15:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166791965432.6919.6168382654740847379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a4a7ed13e301693c71ac1731f33edd5fb07d81b89dae12eed6d8161b1c7f804
Date: Tue, 08 Nov 2022 15:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667919654
