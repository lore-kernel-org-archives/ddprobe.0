Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CECC57E
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 03:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73E5DC433D6
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 03:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669520454;
	bh=DGdVzNZRMbp6D1j6NWwzczJdXrdaGQOCaXyaLXTYoX8=;
	h=To:Subject:From:Date:From;
	b=o74X0al+emCfe5o0NpBolXpW1+L9Tnn767nxkv28FHWu37Yh7+MdV8djQPNzkO22J
	 BHAgqYU4OQ5Wfc2eTUk1Ms+TEe8gKX6EqLu1vwtb6GCLJDZbZw7HoxebEXunRtTQUa
	 Z6UyEfpPxmPvUXkpE6jz+7FUE8Y2eW5TanhhVIu0rAjmGBzWefzjkes71zIJGyRACX
	 HdJvrNF/rEHkoF2JFkxgA4xF+9Kaw5Yg7/ak/BhLJ1I2JZK9iC1zPFVzhIrGlL1SvQ
	 A7uIzjOEpnVHXi7uQp7v1CaDqvLete+ZucB/WYBX3BeTfpL59CdRbUNIz7UNyS/AgX
	 vGzLoF9D9WP+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59546C4332F
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 03:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166952045433.6875.6992123277489652815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54167d231c2e085d74ac5686b1a467af9b45474fe2eb5416243a8741cf44a8cf
Date: Sun, 27 Nov 2022 03:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669520454
