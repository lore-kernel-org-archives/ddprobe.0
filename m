Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4875198
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 10:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7824CC433D6
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 10:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669545054;
	bh=dwcW1tByGcmSR1A6EyK0JrvZ8x4fOqLvZFKn+YgW+Ec=;
	h=To:Subject:From:Date:From;
	b=i0Wlgos+hn10zBYs/BJfk4m3f3RhMZuCWU1lo9/Svsao/VH+MOa1lE/EsOQBl9bRO
	 g1cSpGjfSKiTqs+R20l5+EQ+YIpnZT/43RC/Pzp5dPmQinE7/+SRC9I3N6BIkQF8Tz
	 eKiqbdf1UcDzSLP7dgiZdHtRVMbD51HA7Ejrr/m2wsugmJy8TCes1Ca2Kd8NVELuNd
	 k+m6/7wk8ZRyOlFs298o43zuom/ZB8fSlKOtHFyEdHMjZQgG1Cn3QU0k9COXDJEHA8
	 iRkbf0wsYBWxBGY1dAuP2QVaBXG0rcSdGGgLAk5HN3z6jHXyipe5uEbmaZlJOfzexV
	 2iNjYKnMiz8KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F8B2C4321E
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 10:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166954505434.30946.7076357761654842366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f78e4c41ed51d8e87d54cba26c66bb1a5f2cd8e5e0c6bb85b364b5bcf68e4ac
Date: Sun, 27 Nov 2022 10:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669545054
