Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 428E3110C
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 03:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sQeibRgv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EFBFC433C9
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 03:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698721696;
	bh=j1eXh+24r0MgN0lCd+NyUKWMxNbK7qV7yLv8ZgU9LFk=;
	h=To:Subject:From:Date:From;
	b=sQeibRgvs7ziCcl+EYEBdGVuZM9do0OG5nT5MtB18LpcWozS2kP5e7hBWBnQi3EVr
	 pa70dmFNOd0HUnlucjVrIxfqQ5msKidVk26jJscV7nJV3Kyj7CN7N7ZwjpDIuVR+KN
	 jcIJudnoWeeTfuVr/PAvmJ9Ea6g1cvLGC+sk/oavF9eC1ZdgTjM4UcxArA9QxVjHAj
	 X0cS/DP5Kh8JydRirXv4ek0+3WYbwGPdT1NnqOjSx776KchFgotOlKUIRQHpgBvxsq
	 P2qtvh8dn/3FPzAAJ+3gKJyh9cHxI/rY7qx/KkcucxDOgUOJM39gPQg25PhKd9KPlQ
	 wxftyp7qL9xAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7CD1BC4332F
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 03:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169872169649.32707.10303363106875557740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0899aced30135ebff68a083c91e47d999495400a672ce03f3aa68e43c90c425e
Date: Tue, 31 Oct 2023 03:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698721696
