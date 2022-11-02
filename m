Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9FF324F2B
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 20:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72E25C433D6
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 20:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667421654;
	bh=zOIefVSavHxzmhWMB69p3mrwoQgeLF2vqskzOwDbt2I=;
	h=To:Subject:From:Date:From;
	b=RuGrnMVOGPHUwEheBFVp+n2aWyHvzhwjNmLirPkzLC3HOcTygvHW5NkppBclEExPv
	 vxcRZtZChgpEbg/r++jKmELf9Is+VuXMlRBV3TmHEZB5fGGK/2KNOcRz5W2m9trOEp
	 ylpl4t8OH+/11zoy4GafqmWYL0dj+IvVM5S2svtqmIRPjBSfDHHpqep6vY/3qpUebP
	 4R0JYo8gCHv9uD3UjELxCI4hUBWgin5i9yk7zS3LRo1fuDwyKlO57/Lk3VsigbTRqf
	 UaAputkHGoupwimF/yKZl7tLC+EoM8rLp2vmAHMa1lQ0Nzxj7x9/2hQH+XQHkrsroU
	 PLwQFTcSm87Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56AABC433FE
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 20:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166742165434.778.16057533862084367693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 479df6e5744b4c2afaf843cd63768b3bdf71cb7468cb263ab11e3d4fbda6c8ea
Date: Wed, 02 Nov 2022 20:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667421654
