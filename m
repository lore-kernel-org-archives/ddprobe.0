Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C773D7F
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 10:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F4D1C433C1
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 10:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663150853;
	bh=jvbA3FxsgiIe0e5PmA/gP5IGlPtI/4VWQvXM2HrxnPc=;
	h=To:Subject:From:Date:From;
	b=tmuT6xVV4YmG8xevP82RIgetv93LOmNkAaRWdh7Hqv3xr0+80b2x1lG5VD/M4DBXE
	 lXuabwrusAp91xU+tqGOcMgz7zwF1W6VkgY7W2P8r4ncb+fNeCE6FCB5vSj0BSE1d1
	 f9fuhRuhEarn5mwz+9E6Nln5bsojTzjNeBiCsjMIRK43jZDEXLoTI41Fy0GYFJHs8y
	 yD8Q8WdLlqGA5BIjirOBKKeb8jBrZX+zh1t8IvJzvI7wwvCAt35PMclDkwsNuLrqQu
	 v+ayxEGftHPj9h2D88K2bNWuqVW3POcHWHHZaQIkIvdXmt0DOy2p6I4EE6YwCY92k7
	 b2sQN5uxMk38w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50B4EECAAD3
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 10:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166315085332.21069.5912968433689496689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49aa21f28fd0639b72daebe7359679a182f2fe281b5f0c4d59d6b65603e16d77
Date: Wed, 14 Sep 2022 10:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663150853
