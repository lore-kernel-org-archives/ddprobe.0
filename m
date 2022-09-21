Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE73D1C27
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 07:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 843F5C433D6
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 07:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663743653;
	bh=965Ciknw+WXuNIBeR7ksWxtYLQsVCq6ZzawQPBogpIQ=;
	h=To:Subject:From:Date:From;
	b=nevCZ0vzeBoSC69rkRD6obebpDV/Ip6P+uDbhmWVgeSvSPFNUwMYzITYYqLt+sYX1
	 px5a1rzh07Z1MSupYnY519ML19tMc/x9PMXcPbhHfcvkBJgTLilt1G1KGepN9MIgHB
	 l+WAAt3rjePH5pT6V+nuEExbVClCSRhZhmny0AQoqSguAW9YSkUOL3Dw3ip6p+I2SG
	 uD1Vy2zV8yYlalsI3GV/hOfjiqu/FkJGOlShmMqG6IhmXOem2pLyLedAFnHGZaejkm
	 1ovh1LZmgbeFHzoPwyybR4OLVCy7HEjmLcjCfvEAVJ8w+KX/eyBkuEa62IxMRg/DPS
	 HKPoYH0kDVxcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66AEBC32771
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 07:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166374365340.3196.2627698124162860299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6ea4e4f21bd87c9156a20db3d451b1aaf1523e94b60c9975180bb2b734d4c84
Date: Wed, 21 Sep 2022 07:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663743653
