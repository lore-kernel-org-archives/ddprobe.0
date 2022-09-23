Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDAB73C05
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 11:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B358C433D6
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 11:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663933853;
	bh=e4XLuBxrxGPmqFe6RZZQXyk08nyVmP+FyRW5JKvXJlg=;
	h=To:Subject:From:Date:From;
	b=WqXzAOJF2x895ceYR4AvEaKgpvzjxMgAfdPJNeU4bfuotFdGZTuvexpl0g32vOO+C
	 tyqEoIoel7Ziry9n1F+Fq+XEbUMJzAWAhYui/+hJnI3h6QFef2yNUBV8SRnsOSfVl2
	 wEmEycDl0DVZR/npMm2OWPmi8zBFrj8849lFU+g1czT3NRjUqzcxefHwAEzJ+NEFkF
	 ooTjBLr75FzABSP+6YlzJ4jWRdmfBapAYUySLegcz0ogIoNEh3FNm8MinxHaX80GF6
	 YANt3KIL3ngqWW4JJVwBLr12K9nDOyoWyXyPE5WqlFSms8az+kxp2FJyOiC4zDI51/
	 3J4ifgLaZ1Sbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5503AC6FA82
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 11:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166393385334.28923.2278362301361631680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8246a37018cf8b2e999b21c019ff08628f94aca80d5e224efdd0b412011e7c4f
Date: Fri, 23 Sep 2022 11:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663933853
