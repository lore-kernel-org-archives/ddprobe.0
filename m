Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B472A937
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 23:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAE63C433D2
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 23:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682637126;
	bh=sX22wW+TsKvzw8LdBr81svH2FLy8Tn+R78qSkI5tRPE=;
	h=To:Subject:From:Date:From;
	b=ldph0gAV3UrE09/SJYmuaLnIZ0+WDtMRhJsphQ5OVUmrZV0oAilEL4O8tudifSSJJ
	 +2d0uaMjp4uL52Gd0VVHHlbiTMjSPmFrbooeTtG4E/MQJWyzVr6pw3ZJJTakhwDpAm
	 r+qg7slkryNZ4UdFWD15FlHI1NBxeuzM3cIVRihbLzFvy/EWCIknUy2Un4eEGeHNOv
	 i0cL3WfC3MLrVgQo7hvq8zI8nHHQ7g8Ic1diFh5AFthqv+XLqf00OKgUsuVhtINWAd
	 OJZU8l34f0CJb+dZ9DxLAgde3uQoVmJy5Eqn48n6P4RxJjoCy3WmQ6foCySptj5Yvh
	 134Hm/TIVKOeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C54B8C77B61
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 23:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168263712579.12677.18376546222844920647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 312e726dcb93de41424349af264e24242206ce22e99e36cf833b115df2cea90a
Date: Thu, 27 Apr 2023 23:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682637125
