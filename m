Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EC1117C3
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 08:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF4D1C433C9
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 08:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687594388;
	bh=keVLrQCr9nlDwnN0tm6GNpD2Ar896anNvXM1oi3/rGs=;
	h=To:Subject:From:Date:From;
	b=Bo2hqFAtBySxLGxBBZq6gsycyPtiO/jqlloJ1FvsKjBDVeXpg5GjEpzios2B35ZcX
	 u7qAcV0khC5w9IvWmTtDht4YGXZfs1s0BYkCEQWnDtUa9Dv75zsXB/kojB3VhmVkPz
	 F5UBNoD2fuQQEz8buP/l/tc0LV8h6hyWf/SpBRUWWpE4sSZwTv+SHuGqcYCgRCKLVx
	 dMfnyFjdmAV6JMlupSM9LYVzTqV/D3XirvM1myyqiFpu/TYm0mXQAFAN8SD5tQIoOl
	 zqg7WJb+g3Lo1C2lbESn9D4oO003rySuZoq6K+LzMgVhXRIrwfldcu4cKeaLbGRfZc
	 pJhHObHfDOm4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6CF7EB64DA
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 08:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168759438874.19093.15777406546148903425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb43615e14c0331b97a2cbad17b58d7ecdb68ccfd2da932c7aaa928e8b56b4c2
Date: Sat, 24 Jun 2023 08:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687594388
