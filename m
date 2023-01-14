Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0CEE62C
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 10:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C821C433EF
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 10:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673693487;
	bh=io15yKmJjv/yxfBmN2ify8mRV4ZwGloW/ASg2bxzahg=;
	h=To:Subject:From:Date:From;
	b=s8/DHSNaDCjfJiOmxM1K0Gsk3HM3XN3SRlXuh5N79OiHvt2oX1PRt6cHrAh9nFh2S
	 MLwu33yfYVZoa3QzmIQPsP6mKG5qPVYz+wUdHT5IQ6xkO6yj/dJTq+ryPOCE+f4E0L
	 aWZtRU/CPSTXJ5+c5tSgC7Y6eT+hAnd6L0kCcqu4HzBNNPyRxyJ4AIHpUl1ga7B4sT
	 Xqm7o7KmH5BCklB1876qVEj8MPhQRvKnj6Yba50ik/3PBGuATD2wzWQc+TPXQjVYNj
	 yjlw2Nr1jMDgUW0dUr733UKPXFHOM2fz4eTWcjeyiFWkvoRoArDjFcIExc00ZqDZgy
	 b807NEVZ7m1uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FEB9C46467
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 10:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167369348741.2900.10919131059728480729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da1357084c5b7ec032c947cea3f1ecf4bcf6bc2548fa04e9af0c0a0a62ef1dd0
Date: Sat, 14 Jan 2023 10:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673693487
