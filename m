Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56FE6C963
	for <ddprobe@lists.linux.dev>; Thu,  9 Mar 2023 23:44:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E83DEC433EF
	for <ddprobe@lists.linux.dev>; Thu,  9 Mar 2023 23:44:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678405445;
	bh=d06t7QPuSaoRq+KrRvl6Au9dYFmnhPjm1tC5ZnSPGWs=;
	h=To:Subject:From:Date:From;
	b=nVczgiMf3W9rK58Ux/QoE8dbbLsmfPwhpyq4PCRbYrt6KThev6T7mFovNpYHpWLRH
	 OVs7TJmEEewstFQxpcryZgVWbHl3VJSxi/QuyGsIspuRsodmpTeOM8gDj1pEFrVnl9
	 lOAu5l1N4nzQuXDCAaY9TbbKdM0hZl74M+ONmsX1rzq0zPACBGUcZg9/G9WDMJ9qRb
	 1gH6csvxdO05ZVxBZXFQkXtfsUmRR73/sdxdbW66/U2QsrtNXfFv5VTZATlEVnQhT/
	 5WBpwnyW0xN1d6DpNE/iZH06t48hBfP3OCYcfhJhaYthe0s7MdkXR6b7u/N9T9mxLN
	 XF5fFuuWlCeFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBF2AC64EC4
	for <ddprobe@lists.linux.dev>; Thu,  9 Mar 2023 23:44:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167840544582.31343.7018244998438698911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 414ea63c485312324c4ed3be37d49ed7d569033c2f5e89027dc1bc28358101b7
Date: Thu, 09 Mar 2023 23:44:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678405445
