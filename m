Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46C58173
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 00:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E351CC433EF
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 00:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674691985;
	bh=2ceeg5SPRwIadr6ZJ0ctVOZ4IRAu3ZzPdOY+YcNlZao=;
	h=To:Subject:From:Date:From;
	b=PXA3USYDZaklxsouYK14KulG5JTZTnDYLiAkqLEh8+IDn0Xj5Q8H5wxYTAatbXz0F
	 +juDCOwibbvuSRSNm96iXagsp0cNrAHmyfo0jNAcuC+KAz+VeidEY9ewHbsF6lCrA/
	 l/r7uTeh9Wy434OS8SWN+Y/XOtZkcakUHusT2P96RbomfOevbQkhBChqqsPnYQFCRu
	 Jjawqv7EjwwCmdnMZ06wnB9KRpix3Ncyyo9I07LFqn/8wVEWp1idS5de4uduh5DblK
	 KXMVfEq0WPYBEudnq4Jx7ymrKbzGK3knpFshCn9dFORIAKzEMeofKkmjmylQ6DBa6Z
	 MZ6PQVhNW/HNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8EDBC27C76
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 00:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167469198580.28966.8872382459016885617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d783bc782bf052b0fe73499681ba8e66223e876b489764bc3641d5ea25409df
Date: Thu, 26 Jan 2023 00:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674691985
