Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDC176121
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 11:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D409C433EF
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 11:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671016287;
	bh=xU46+FTwLwPYdzMmYdjGbgUi4XlnGrLH4Dq5St0thUU=;
	h=To:Subject:From:Date:From;
	b=ezHo9uAVc7I+KrueK/z/1M21Hw3bURMNshP6BXoSrJf/gtUj3YILpFA7YVAoGU4a5
	 Ntda1sUmjf+bPwA2YGsEIbUv2mxN+B0DOTMGEQRQn6ZpuBDGAEFoo2Jd+MPvVJhmuS
	 g67E7qRlkEkQCUODI/hBHnglsdL8ONsQm1ngyx3E5vNgKw+mYMlCWK2E0oV6SOnhA7
	 3+K5mKlDoo5RV90l2fMX70a0as9Wb8J56s1eM02xSV7hExiL/EW5iVRtQPLXzFGL/5
	 S9xKvCm0U5JEHXRhjFEq+VTd3GCYsh9R3xz6cuoaiLzGppvdA8ZtkxOI0b0K/MFkfD
	 B1OZ9yPQEhbgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70B9CC4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 11:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167101628744.24065.14924860872862343447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 503def38a1f87eca098f08f274193194eb7177153400e9bd21aae067529e16e2
Date: Wed, 14 Dec 2022 11:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671016287
