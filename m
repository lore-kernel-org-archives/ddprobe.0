Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F06503211
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 18:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C45BC433D2
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 18:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672770687;
	bh=2VP7RrY1V3tssDbaugpkb/trOcTCFTbaBJFRsj7Dizk=;
	h=To:Subject:From:Date:From;
	b=OZjep1k7jHGkhYMGEJc1ek9inN+bCpam0h+LpfBOA309sQsBz2/UdDX3vBLo4rLJS
	 02Wkh6FMCsRlMdrTNGwcClcnMdeojJyXpnJsA0qhf3bn7yJxIk6csH+0NB2BZAE/oF
	 v4hImWPe8Cd9x9RDzYKJnahokdwvjPRob3o4eP5DvM+LsYHF7BgcMxuBK0T4+nF8aK
	 bjHpWaXkne9N2/hv9nKvbB1q8mu+SspvEmT7jZEUw48WjDkkMs3jVXlb4JQoM0HGZN
	 tjEkIKHjSoL0600jsLkqWi1bCKKHeNUiMATOVQ0clNofZWkjwnNlEpWo8rfgWz/phF
	 j1lkiQIQoOLJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7CB93C4708D
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 18:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167277068749.5183.14313920211359252483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b2c506ce45e528ddb654c46b743962b7c14482f7761c9c91e18af7697984c6e
Date: Tue, 03 Jan 2023 18:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672770687
