Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 277ED1843
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 07:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D58E0C433D2
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 07:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681285325;
	bh=jG+g4E4uM1oXkn8ko/P1A3PZjrDs4iVUPlTdLw2NbqM=;
	h=To:Subject:From:Date:From;
	b=LYUugBcx+iwl6QihlMAZj/pTkkIPlMNMWcj9obVJ3zxjWLXQER+utzViVDJCiS2Kv
	 JqSosj365GvReOMkpp9CWHNwDb+jKfC43bOQ1pX9wJiZOb2psBgIgtfe9YQiVJdNoC
	 /TLitElJpGQY4OtNXgWlsGeNptf24jFx/zSBvXjAnKsdyVqPyEWYAcMJ7OBmcWiLz2
	 IAf87wuHPOXSdQ5n62jL7FAHRx4lDOFGt2Va3D5u16I2/2mfKNlgy1r1iBKW5it+Yr
	 QFjAdfTSMFgnosx4g51y8aca8ZPmfUsCGzDmMCuycGKCaIeT+zOdaXxYA+hVCkBICS
	 tlkB6iwP6pegA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC123C77B72
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 07:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168128532576.19185.11810220171216944126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32dfd34a4ecaaed241b22312c3292e38add2c82146629cb13fcab12c7be3f06e
Date: Wed, 12 Apr 2023 07:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681285325
