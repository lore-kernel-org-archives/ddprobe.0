Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CA9F7C
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 01:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9B99C433D2
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 01:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675389365;
	bh=zn7KqFoA8pyKvA1fOk3t60N2nJQ2sWf+SSXHX0XPB9Q=;
	h=To:Subject:From:Date:From;
	b=EW3ACj9i4SockbK+u73kS73pFOHd11tnR0RIIOJaQtyEXAAXnw/nHBRUjursuzgAX
	 8I8vy8T4WpqKUiGGOuxdyRi6Iw0rhYR1FADCM9OPqLamlk2tFH6uBigXgTmV5/qJJh
	 r7dfB8m/g5mIBMcvjlA5EsTOa4iEKwhHkggpP4PJOH+u+op9BcvOPeZL3gMsmbzlLW
	 tyCNeD44BLol4/oDXGSM4lo6PUrJKM+SrnajK+6BigoZezz6M231FVrkIb7tcyG+FV
	 y2cnIv0xGTAv0V9Yrga7ZHF3vCJxufV1HEuAzF6Uty0P9HE9kNxX5ktZyUVUk4Lydg
	 XftOrYhhoraKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA9C1C61DA4
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 01:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167538936581.13940.8289166390069843730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd5e963f42b7c420f59e80e24b902ddcd9952d7d890b39f8cdcd970be92ff37d
Date: Fri, 03 Feb 2023 01:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675389365
