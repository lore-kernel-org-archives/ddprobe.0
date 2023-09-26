Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74C3D10EF
	for <ddprobe@lists.linux.dev>; Tue, 26 Sep 2023 14:55:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D68BEC433C8
	for <ddprobe@lists.linux.dev>; Tue, 26 Sep 2023 14:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695740108;
	bh=YE15Z4G3SLrlDwaDGmzUyxJ/MvOr+qMmUf4lr3GVLyo=;
	h=To:Subject:From:Date:From;
	b=HPZmzoJ+09xDWD9zU9AhUrtOINOuNGLzuW/hKyVH5Nq4M8MJPIzMX4nhB1J+VYGhr
	 n11l2t3z4wX1xYjFm22yp519TYZ5LKoxLIPlyQZ3bYs1UNzleMY/Fjw5oTvBTreU9U
	 0sgL5HMiyteAhukL9UfJY6Uyl9NwEG68fyi8LMpA53q5FsdqS2p34DOuBIIdc3R6io
	 0jkpGH+vderax8R97iBWmKSdEHkZLIbOwcjwynJPtpVXa5xLkn+eyMdRNV8deyGU5r
	 ivMnjNc0ThTZRm9i3H3ttxJUPOz3jf78bxKcGqGrPd3FH03hSBzKO24RTTXaJ6BqEe
	 vorUTGi70YjUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6520E7E63F
	for <ddprobe@lists.linux.dev>; Tue, 26 Sep 2023 14:55:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169574010873.8204.2487495909395026727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1115508843b534211453a528e104c1cfdc93dd90f1e0a9f94590086ec20b49cd
Date: Tue, 26 Sep 2023 14:55:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695740108
