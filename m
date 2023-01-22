Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E5B7629
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 04:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D965CC433D2
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 04:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674361325;
	bh=g6yRTzdnuYuyHwBYYJcCD4aCla4BQLlQYcwPrKfvUhE=;
	h=To:Subject:From:Date:From;
	b=ZvXRTdLlx5K6HqXoG7owEhBsXmK45tDeyHoKzoU0qjLp/7sMPkbAGXyLU21DSPUmK
	 khRrDNUk+zm8ruob08uoB0W0ugJ9yHV201f5PukSVPsrLb9KQW/wltmOgWM0jNyJGJ
	 ovgSKAYROHsnMYZT5L9T0zl+PXAkvHNhvAxYb02RttBp/Ozvkql6dhD7Het10ZnX8x
	 j2MrMomPjDJ7XLrKt1GGr3Qg7PyKopj5yS7w1tlotaHKsjtcBC03MzTsC19l70j24e
	 K6vKXNw3vK8KNTO0PVh4Wk4U5CVrMaonm0GjrUY6TJOd+FqkP0u/T694hsr7RJ7h0M
	 gRUUdo21LHBSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE342C25B4E
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 04:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167436132572.1633.33263279974069524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 855715f223768630e6d778bf63e2f01be6b4ed65d531ae8adfae3162d3a7d66d
Date: Sun, 22 Jan 2023 04:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674361325
