Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E29C0194
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 02:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79B2AC433D6
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 02:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663986653;
	bh=+BHWNlX4o4p8KxS/qd6JcJookR3XPU30aAX4Wf3+EBs=;
	h=To:Subject:From:Date:From;
	b=SmnDtHh1IrssnnjhGC8aBMeksBqfek7RLSzUCGNcCmKNZnG686CJHq+COzgBgJ8RS
	 u38nPR1I95eLWKhicpJNvdS0sEhN9eFgdEiGun7dTzdwwx9Kl9opNQ4+aJa4eyia5P
	 hcaIw5STLiIBsmEVVQ8IIainBsP54aZDhSpWYLKeFaVarbdsIK+ijJM+qXhdblIHUj
	 7lEbssQoy5CyFWdOwKs401U+iEhiwbt+V6pZ1W0RDZF+GzJg6NNxuiH/STsERdCM4y
	 an8ssKLtOsoeTdI35VEo7hb6PyvD5PAmI2YZqKg0+4vihZWX3KyRAU1sW5q6Yhp/RY
	 bI+JaZ1zG6wjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D494C04A95
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 02:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166398665335.14901.5656333466908931614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4529a80673f129d8ffcdca0f9ee5efdf3cb5933f5d13e6f04b6d4b6224ad55e
Date: Sat, 24 Sep 2022 02:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663986653
