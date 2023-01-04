Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCBBC7EA
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 09:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82427C433EF
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 09:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672825287;
	bh=TNvoHhL//j5NB1uNVQdZc7qeQmCi1QvYW4Ayd2VViq8=;
	h=To:Subject:From:Date:From;
	b=S9j0l6PtZS+JpwFpLaUMTRxiUaQTK5mJzyRLnr4JcC/IpZuzYQUahr0y2EYKHxaFK
	 nQ4L7Bdkwwlfxfx1oFE2K6RMeNT+YjKhMNgNimLfGsEj71ESIMicRvBymccsavfw0U
	 3W6Mex485SO67tLcbLz28IPRAElgXhylrECjfoO/MYf5cqM+brf+HZYvQQznCcc+mk
	 tJPdfmnX/pgYR++hAmH5gJC5Yzx7KCRqkEk0w772Qs8mbl2zl1qD73gvlT20/OVwDb
	 HHdhDLE/mCMVjloZLveIAPle78okom3Jb9t/nga8jY5abfGntfVnbiMEh0ebBqmuVo
	 3UHMKm+lHgzwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6278BC4332F
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 09:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167282528739.24691.7487464463641278908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c17a4002542f9c6dfa5b9a286161c990da3227c4c1c2df812ad6ca529d44a199
Date: Wed, 04 Jan 2023 09:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672825287
