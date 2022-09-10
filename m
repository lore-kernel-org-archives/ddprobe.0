Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1196A40
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 08:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78D5AC433D6
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 08:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662798053;
	bh=T/0Q5f6Oc40RuG5liXclQn0qLONfAE8ofWbnPxED868=;
	h=To:Subject:From:Date:From;
	b=XHNLkOvM8Z/gQzkn2w+dO22jU9U51uTUYsFD6Ex8j9H5TzjrtLxGFHviduSda6KqV
	 jTfynKwupdfSLfbbXbzCKSgOVTkC1qN5kA8CKeRp0ffEzktHKQkkOCpUZD77drxIZs
	 WIhBCo5DQNHQRVlBswIL1td8XOlXNFHjImlAlmoky4CovsEBye3VcBlur5DG0bXyZ0
	 zF+Q70divZrouM/mQcediRE+JhBaTwX4kp8Ii9M0U3Q9SMNyxhk0SSm6eSySItrYhk
	 4d+F0K911/a22l2U4jVQs8WuYMkyA4kF3efVm/0mFV6BNxbG0IDPa8gLe37tRnKobd
	 +XUZZdwHM7Ihw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F4B4ECAAD5
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 08:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166279805332.13343.2805138690122916573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6700fa2b117cf38f8c18e7e11c92d19cf337e31ec46eb827e1c37b03aff0039e
Date: Sat, 10 Sep 2022 08:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662798053
