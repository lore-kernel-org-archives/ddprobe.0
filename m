Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4C6A2F36
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 16:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EC42C433C1
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 16:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669739454;
	bh=naUMRubhdhBzEDkXpyd3StEBctynCc4DaV3JJgqWxOM=;
	h=To:Subject:From:Date:From;
	b=JKsWPsx00gohPzJU+AhWvJ8M7ilCFeN2l53p3PRzIdi1OhmJVvlqMOJLO6Lf6cWmr
	 1lcOc/WDXrwN8JJl1zDplnxcZIaHy3KS5TyDoZNSHym1nnopN1h8bRU+2KqAkwbhVS
	 uIs/HLDRHPxe1vpZgAMlkYqgTXj2Nge5CypH6BRYYk5qGL4KHAOLce7fHz4cmXoadE
	 UkQU3+GcMalKn9A3YYXN3MxfqQbVeJHCD19n8i/TmA0nDCrvb+p25rZ+Ws/Q0D68Jk
	 5hAgY4lKM70l1IZ/odpAEgjz1l2UGfxwQxOqmws7V2jBdvVBBwcBXBHegNMxWRcdnx
	 6ntGcQHF6Rc7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57954C47088
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 16:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166973945435.24232.2861573011658485987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db09ecad386ebcaabb9683a3402fa4eb5dcb8ffae83c1b4b3908fbc2f6425ad5
Date: Tue, 29 Nov 2022 16:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669739454
