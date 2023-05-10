Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4833F2105
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 13:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA832C433A0
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 13:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683726665;
	bh=S7cBSh5JgdhrDyzQG41dYK44MPeiXcH5wENw8QH/wH0=;
	h=To:Subject:From:Date:From;
	b=ogzEZ6D8PFdSg9FVIiAjO/GUw2coA+pEhxNS2xhKmLGPUkfuIVJe01fQsOGA92wRK
	 2YYB53CLql8d5tiTYBI+yBh54P6zHqw3pfpX8s1c+nP5LAxgHFeqvbUDTjUIuLIC+N
	 0g8Xx5Mhdnw39dAteLEc39ymO+QBZJEUx3AwM0edC6wvef/BKzL/Ddrg8tmyA4lMZe
	 X8izkpBoBTGNHBqJAs0549/VQoWd1ZSDuNo7HKxoRockHLZVy79Vvwc/4Y89BkEdjy
	 v+WOYIxAsOE3/fJ1CzPR58ikXjRXYMM7VtZX5RZgyzp+/GHDi58//Ga3sxuwIrDRJr
	 gwcUGO16Atb4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9572C77B7C
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 13:51:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168372666575.14173.3698451152315858791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: accc2894dac16f6058d7b2fc2cd7fc9f9324ed228d8feb770b90509227add8bc
Date: Wed, 10 May 2023 13:51:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683726665
