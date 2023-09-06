Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58DCE62B
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 00:44:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB28DC433C8
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 00:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693961048;
	bh=rtgj96ig+p+2QAHNZnofSoYc6rSw3TDh2HrKUc11b74=;
	h=To:Subject:From:Date:From;
	b=VZ40TPhz0q1pyDxD0Ul+TLzBXKV7hBpUOlCnED3hHlmLIEcA1ypSH8wgEU5DBNdZl
	 VQa+7GxwTtQAD6OiuHTeHadh/tGIKYHDvTR0ZweaBts+QGhyC+IYEuuSC80mwxlceF
	 b4C1BFoBjaoDEq1sqcwEULQG0QSHHGh+okLLwh/8R9uHgChx3r0E1ucdoaZulmt54u
	 zm77yRnI+hQ7HueAdG+kJIbbKMTkJBrVV8WUUOmOqVF3sRzOi4fSgH8Foza33ZO8kN
	 QOlfYNTQLRRzIMoMbW+DkjUhzg4f+/tIDw78VHGeTi1AzGA0PGtiVqQcT88bS6Fw44
	 BX6cbQx6SWJkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2839CCF9ED
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 00:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169396104865.24394.4160745380582226403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0f329f9430c64320787d0f895fc8f7565f3b3badc62c89eab8ba8e53f563ee7
Date: Wed, 06 Sep 2023 00:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693961048
