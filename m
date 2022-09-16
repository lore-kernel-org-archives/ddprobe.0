Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B94BD4C95
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 11:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66F92C433B5
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 11:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663327253;
	bh=7Tb6FGjxOEPZFPM9d+MuLbfjzWiCMl3noPdrhdfSYuo=;
	h=To:Subject:From:Date:From;
	b=LfbQX56ch/PXz3Hn4LDY3Kz2Hw/aRXhZCwNWyK3L2DZKGdZ6oq1ZFGDehMDus/Omj
	 SAoiYD6T6yUzzFvJRlTbkt95Guctr0f2iEd07EcFafMrILCbWIN+ayYR1AMKLCViwt
	 Bi02ScjGBQh4qBKTm/Zt1+9SdOneVLQtxpLD+r6wgB1WsHgbZsM9QIKOUo6JLy2Y5h
	 qRoRo78b9gCLUTrrC6DDuYuW/UXfPlJ+wlz45q4WP4l5eQcPOtk6j1qpJnxq8wpoBn
	 oKlH8iZ6YZ0MiU576JS7YNTbDvTTShDyyYwQPg2dTuk+al3vFFmxzJ/gwhUmlJ5Wqu
	 5buGpckJGpXVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51ACEECAAD8
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 11:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166332725332.22842.8674821430505817554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89829a55aa22b36b44a649091fb9d043458c5ba30626df68f02b4666c547a7b7
Date: Fri, 16 Sep 2022 11:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663327253
