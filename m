Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33A007C
	for <ddprobe@lists.linux.dev>; Mon, 29 May 2023 18:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCB4CC433D2
	for <ddprobe@lists.linux.dev>; Mon, 29 May 2023 18:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685386325;
	bh=vSxjyGsNYl60ZF5xbQHCfa2WP8+smnA3UX1+VL2dWpw=;
	h=To:Subject:From:Date:From;
	b=kpa7oXTK4QyLifkgBMHwcsmUeUSF/p+wVVzlME7tbGAoNYYlK4w3TmAsClpxf3YRI
	 SBVUtrCTM1/O7p1mjMuVyuyAQL2avZaotdnAem5+DdzB8kDn2nLpPvwjKW4UaQiP2D
	 CEs398wrrGl53o/FQDeYuF29xIUJBp5ivnisBMwjAhC+2hNNhQX4KseQyJ4lXV9I7n
	 k+YJht3iyuVj4p9g2DvKQSb/b5wBXb+bssXvhBAzw/fWOdDt3z+bSK2Grjv8rOOnVc
	 jJYJgYvwbbMRUOtwC5aq722BQdKT8eeaggvxDGDIR/CaD8EOo0WeOxs7Ty+HwzJinx
	 2xcgCUhtaOs/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6EFAC77B7E
	for <ddprobe@lists.linux.dev>; Mon, 29 May 2023 18:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168538632574.14397.7173080272726860857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a8c54c0461b2425bdf1fde95e3c74d88c4496df3dbc935c5ee933835f88b81b
Date: Mon, 29 May 2023 18:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685386325
