Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDB294A14
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 23:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77A40C433C1
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 23:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664234453;
	bh=6n1MPMV0M50E5U8wBP2k16tZdDmnDvTiokRYdSGqaKs=;
	h=To:Subject:From:Date:From;
	b=FhoXX0CBpOwUnBhLsUVFRogU+M8SEOOMkjTBBlhDazaMoeNpICfOtyVMZdiBtjVrx
	 9UJzeecvT7al0ooV9PfQnUO+TEQ3N7nMkszu9Mof2WMHlW/iSWQTMOq96a7buCGcZK
	 s9+/4j8NBEjKDuDT086qU3yDDQuBbVGtGTwRzNFwbAcvTNdAYIMCfGoeZjESvPGi/V
	 ofbxHNWb6rVsOUfYxpTlCuhV7ZzahdFXrI9em1/QVzoazmeXYqy5/Yrxn1Sd77MLyI
	 PLoymfydhhICO0ydnkp09tkH8GVU3a2K8Qa1/wzWfa+wp5XpCY482mCFOW8g335tkY
	 7Mt6A/j91Ta5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53653C07E9D
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 23:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166423445333.17789.18238760078126805430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ee4c8abb9e299ae254f341fbdf7bc2b4bb284f40f6157c686946aae7d010d45
Date: Mon, 26 Sep 2022 23:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664234453
