Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E076B7ED
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 09:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 764FFC433D6
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 09:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667380854;
	bh=h8nVLj7lqV7IC1NQtluzVIXxWqVHDF3aqgVyUN+Joyg=;
	h=To:Subject:From:Date:From;
	b=HvKRzPLVKew74teLqXFEP8fxSH/dSgPeQPgb5TfKlyQfu1cEUY3QwBSnG8QoVtS0B
	 0C1BjTk4xNA57CQ8JgiTPhKbyEqcVgOjGRNvaqNlTQKctiKNOMfd+Xn713cCtAEMlj
	 4EmdGjKraYS/cMJFkY5CY+Met6PZZRcpdkKxoV+tEk0fx7sEIkTZy9YvkaCQo23ee/
	 zijmqAQfjr5HTI6a97JgLSX+SgUxDWqLRuDZ+Jt1OlW3h+pUclBVwPbyaxkaKIhqLd
	 3jJn6AKsuzuz65izUbRTmJllrgrWLjRJcUb7m2xbyCJj5v1Q6akqGwCkavt6L8Ic11
	 TvO5bJF2gwh6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59952C4332F
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 09:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166738085435.418.3878443845306047052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43b01da015a7d330f1ef20aff2522328bca7afcf4ec80f6b26cff5163eae9f50
Date: Wed, 02 Nov 2022 09:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667380854
