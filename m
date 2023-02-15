Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21A78C5D8
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 18:59:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D46CAC4339B
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 18:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676487545;
	bh=MMhQ6c6w6uLjExQTLbAMzIF8fiFO6YZHXO/TVeRMpus=;
	h=To:Subject:From:Date:From;
	b=f2lIDqZGMTogkRYsm4G0Vym2GvM/AWF68cEDfGT0rpvWYdGQTxaxezw3E/yGEwMnU
	 WMD6V22hX3V4Qrq4gr+ZnKc3gFLfr+ZkrO9pqfWu6NlJyRJJUq5whRNb4p4zfhOqLQ
	 Y6JawhNeq2385JYNp/kuKS4MwqMzjWN59bHNnAx0u860CvkClIRCYVJbiRaKyuI6wJ
	 tL1RjN115AQFb2yVFhqVmrSQK7/Tk9dqs1uu3n6hinBdG2zxXdX1os0tk8EdjjTbLy
	 XZUsJGxo+I+4KBg0hHcMonCRTWm425hTvJRbveqkTX7FL6gQwm7K9JIhKlrGs1ty/4
	 r6Rn4Fh8ZAQ5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B90C9C636D4
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 18:59:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167648754574.10897.13259523681328873457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62d32cc44a9fab2ec257c5272b9f49226c37589edacde44460a9bd079364a0c5
Date: Wed, 15 Feb 2023 18:59:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676487545
