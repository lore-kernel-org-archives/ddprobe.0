Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E2DC523E
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 12:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1269C433C7
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 12:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691239988;
	bh=cygDpgUhRapSHw6iEW9B3lTDIp94Ebj3tZJCfXrCPH4=;
	h=To:Subject:From:Date:From;
	b=dNzG1KDNmoBgXm5lJ6gNyFwtc/xUN8bZzki9bFl2zpfpoFIzc5RArq91LXuMjNXR3
	 4Iv96qWtmJvZxMiSn7348dLR3jd261jmI8eldP2mf9asKsSb2udrcCQosNOIuuOcc4
	 om5E6asUGIxjuOvZIuMXOGg2Lmej33xOC9h/BT84Z3XFYOeNR6XNGpcBBgUYY33hvk
	 SDLcDQHsLsdTlke/0XrVt7Z5gmj0fOo9tYKKJjpBonz+dap6HWmSx5jnXu9iyYHzGl
	 0yax1HUo+/q2ZJvugYpFLDj2sGWneViybjdd/fys7hctVuojf9l2bGI7ZQl1a5qQXP
	 cv/twEKzgGgUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4B0BC0015E
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 12:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169123998872.8695.13713762371666612656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3f7fd161d9ea1b701c2ed041c6c27c765f5c12d29d8963aa2e95065c9fddfce
Date: Sat, 05 Aug 2023 12:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691239988
