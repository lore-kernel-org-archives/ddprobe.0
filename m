Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55D42A23
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 00:33:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5062C433C9
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 00:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687825988;
	bh=fx3dCCM435hbZKfs+hqSeoFY8lAhKbWunV+PfsZnuKA=;
	h=To:Subject:From:Date:From;
	b=JMRvjx97rk0flCAqBIP4hTo2smg0VVaVOC/5K3iqSAyS7y5z79OlZUpH/8IlxnS+x
	 arigJgb2d9uTy0yQM6LlyfS0fCmR2YRbJCeSClC7thZO0eD5DnRbYWeTpsbn69/9Rc
	 fzMRByZbC7LrY/ukp8lD0AAGofxVhCVFAnmEE/5eZx5gpQHAHKI9GiBXM9+Ta6hAgr
	 MWPW6NoCLYMrvOcD1SxZ0f6EAdMD3clEUCd/Jefv/5ZqsVUDNEIeVBJmP/ZNOy2pTL
	 gdwUtWb8uppERJcxVqijeSOlu7yBIQKw5/vUsyjVnrHo/jC6nkKCuXi4R88nJpuqQS
	 dMks0RWB23tiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A950BEB64D9
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 00:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168782598868.5726.8493266503743654064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 679412a6f2bb96ca6272691abfbc128722d756f8b788a44d886bbe45f129c2eb
Date: Tue, 27 Jun 2023 00:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687825988
