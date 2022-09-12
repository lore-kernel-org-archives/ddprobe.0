Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C42035C82
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 21:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A97DC433C1
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 21:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663019453;
	bh=Dc+p1H9gNpAkZVvNzOJeQKI2xdbHWQg6TkaIyefXVKo=;
	h=To:Subject:From:Date:From;
	b=duqUw0LgaJj3LjKC6ysW/VCPwJLq8FSxAuvTw8yB/t+bM9oRHHjxB4eNQ/w4lW6hv
	 iJhza36bA5VwBdad5BH6GiNHxF6xVAgtM8ke5uCQ6ynQ8ZiZesBxLgWUbvdWoAHy5f
	 NQa+k1N3M1qYQdayOdp5c3bUyZYpjPoICZv2y8mrmrecl4wtXGS0P0CkYPcqGAGwSW
	 +QPTI0wfHey16FHD/EILBSdZ9lXWtSceS4OOMKP+K4xC+DFgnqpCY8QAZMZJPbFOQw
	 b7frYYR5N2VcMvGIERdqqAJK4HhysvjTej2EIqQl+sIJZQhEEg4OZ+Ar3YW8P9DbrX
	 GxX4msiFHeHKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EF13C6FA83
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 21:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166301945331.11332.6438937568612542326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc1f3e308afb1a7ccea81950448be8fd54844417d59a72061a9d236382af4cdd
Date: Mon, 12 Sep 2022 21:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663019453
