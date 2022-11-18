Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7DB87C
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 06:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7109FC433D6
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 06:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668754254;
	bh=Xcg0Yfrsc7bN7kPYAt6c+9D5WDkV6zGkYzOdgVKRB/4=;
	h=To:Subject:From:Date:From;
	b=LUOjD2kJv/vGzqQ6dOBW28nfXfflN0mDzNBbi8YihwcUIg39M5I/fBR6t7mbYxR3h
	 r9VS0aQwrtHgOvkmJSvlvHlORAT+bTTdhjtyOtX8cjG85OsTeTIZsB7hOgep8dMv6f
	 hQ1lIjWXYn9vSP54pSxOkR6Kr88oA9GhvintC6qE0YH0606ANqJO3inU7vW5MQ+R4J
	 hwEWVgdMQsNRiorUmoGhdlNHNenw4UVuthU6da34oZlzbDrvQ78tDzYuM5g9aFNVc6
	 2xUjL9zoBt+6SgvseXVhbEkwSFGf4OxFkFKPusI6gCk1p9x0SXs6x/WwpjRYh1yZI9
	 8lEPf/q73IJPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56503C433FE
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 06:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166875425434.31275.17582191911939906115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbb0f8c1ecf3d1aee8d2cfce262def239beb670f0866dbc86fa9d9e6eca1b5ee
Date: Fri, 18 Nov 2022 06:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668754254
