Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FA4AEDB
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 10:39:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEE59C433C8
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 10:39:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689244748;
	bh=kjonHVivikx2IXCJXDCngZZVNl4fQ9+7ampZ5VJlVbE=;
	h=To:Subject:From:Date:From;
	b=O7acJbaFZRLK5Cqhwsvgduq3lH8aJDoL2eAzFIn25MOpzgIKe+J8QNmOjM2qyXkLd
	 H694mCHMlu6N3KO11aVvex32iDExS/g/I2hQp4HMf5xfd1oVKoXaPJWe8re9fVarxU
	 p6QudYmv5wkBQlmlQ/zcfEzIKwBMQvlU2OR0zTmzyxA0AJpUGSQsXD+RlD0dD7Mq4H
	 O137+2HRzLweCao/Ju7ifeNZwumJUDcmd03JdBeoxRurIkgyMtZuz/gEHAzTuoOXqk
	 v9vXDjwUti8gXR52Lkb9RALLPsp2oUUsjhzfiEs6bqjJY826cm8iWIhGAoaWi9rQjP
	 v4bIT/jbI9SBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAE12EB64DD
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 10:39:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168924474875.22054.6777303804235877473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dbd38d5db87a842dc3f30420b1fd48766eb97fb751b1898af75c9a5a2b9ab66
Date: Thu, 13 Jul 2023 10:39:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689244748
