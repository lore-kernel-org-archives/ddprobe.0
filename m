Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36DFC7C
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 01:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D85FAC433D2
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 01:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682301125;
	bh=sEJzhF+K0fctn3Lxd0HI1Z5EUqWxJXtA1Y9tAWhYJ8U=;
	h=To:Subject:From:Date:From;
	b=bT7DnWRKh+k8v7IZpPJ9I7PPbN92zwHNF8IVNErlVOB4ep/PEDnnjgrNNR+4Y+4eL
	 37WMnruta7kkiA6Gf8yputa8x5sUjcBlt0jbbs1d5y3XMz36mvK7srKKk0j9SmPv5q
	 Yp2yvC+wxWeHrQFO9xf4rMqHzIK9275hzJ+x2HlDyrdBqMAL6SZdaVFh0TPH85sUVQ
	 T5izIJ8tFdFcUB8kyA4/+7Ld5hWbIDQA5DT5c6rgU1vnkhNv8H7IIQWwU060gLilFt
	 Qky4GMvCO4OGTLeebM6A8d8FLg031OsV5J/NX+dciIm+LFm/CKFYrpu2sTktzSYF4X
	 yFtrdxCEdHYxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9F86C77B60
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 01:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168230112575.1611.3125008360632782868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc76e83c9e19c98ba28b6989d0f8edeef6019760feb4bab8d47d56df8b23abb4
Date: Mon, 24 Apr 2023 01:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682301125
