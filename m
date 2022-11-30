Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3929BA51
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 21:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 701A7C433D7
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 21:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669845054;
	bh=bfX1uHkY43Wcl3Od6qDyGJCvS3Uw74wctBVwelow7RU=;
	h=To:Subject:From:Date:From;
	b=YN2uvss9gT/xnYD42OqQbNkkuMMAYK88t5av06eEzACn49PPSVXLEFVVkfaoJrZwI
	 M0cw9MFPMi1Qwx64Qc31F6g9yyRecbVcetG/cJ/IxjLLYjWist98oySc7jqzZ/TDe8
	 O0+IgpV+HGhMbrH03mSVeboaEnqrLtbwGmvWV5EV8dx5/O9Y8tVht+PQpd+YWkm66b
	 p7FDO1F5NJdgXtGEXPdK24in6XrUZrqjmItz7yoGMBUzdpsgbjYfJWC3uSlnQyZB/D
	 5ykO9uWTIlpR1mlj+zeUtPk9pidPu2i3O4XeSOx3P+37/z6eiral3SxuVW2tGK4+QS
	 32pANbcg3/1hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BB3BC352A1
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 21:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166984505436.4696.2459566466427071018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c5cfb23cbb08ecfa7f4a93192368a92bce90f2261694b5a7ea9fbeedaa0bd07
Date: Wed, 30 Nov 2022 21:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669845054
