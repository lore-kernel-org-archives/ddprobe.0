Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B0E315A6
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 04:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2F2EC433C7
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 04:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691209388;
	bh=mw6JcmoUPH61olF7GJ+Y8G1nBL3VEaQaI/bvknkXQ9k=;
	h=To:Subject:From:Date:From;
	b=Fdw+vfKCm+LuAGqN0gJnD3t+4QSVRy9xrr+mzMLnaXNV54ynV+j8zs7cmIN+ARswS
	 9xAAfGUPCjHiHnKDnNzRDsyD+ic5GDYkqq7wSE5xyqRZU53vUMOaz/EiSLWXQXPxDu
	 +0raDo3A0Y+jeez7TsMCvz56sxmFGHY1Gx4CR+n6J7jfXBehUt+cnKj83olisPeakg
	 whYjr2kGw0Kt8BVeDwD+nFwmAzgdwEgvzoHO/N34S+bwh3JZoFhW1KNRo1Yw3o4iyx
	 qU37i3rkj/7dsDdyxht2cxlsOH4rBuKh/nHwEGq2duyP8qppj2hEonULKPOSxijV0M
	 2+RCfTZdWMgTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF38C00528
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 04:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169120938868.12107.4793570905339098701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5512fea904cd3085dd408c3e73366b86d3e08dfed71bf7c3f5aa54567c1bc4e0
Date: Sat, 05 Aug 2023 04:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691209388
