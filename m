Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D9EA20EC
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 11:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8EF6C433EF
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 11:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677411965;
	bh=dY8v2LSinaGqrZoTgnFNZT2F0uUxGC7b2cOyeoR1MtE=;
	h=To:Subject:From:Date:From;
	b=KXo0JZPjXFTexo2KwK3FJAhsbMWqwWnCYbplh4GDFwgkFrFiA6ecfGTEKUZqUiNwx
	 xX1HZtOFG37FoauyA8KpmFj4eS3v22r3LuOsaEM1WBiZ6vKJwDcJ7g5f/iPNwpwjC6
	 RdIfp5FLPejkXfuzPG/udhn3KVSgtEw0syH6RDOQG1NHfOJyrvzBRcqz84/iKZM6+K
	 ls/odOH2X+C93pmA9oO6UbZ2BUeCC94J067oJ+frmuQs+dJ7HWZYAGnLunb5h5bx+B
	 X+Mfz8fXc9Z5NK+LvYPPayFxGtsebk38DZRfZpOWQOWOZeOz8aGtCat1P9iDZL6LPT
	 uFjLHtjFzxfPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB669C64ED6
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 11:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167741196575.20639.11452099700424293713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec806d4c645f9f79cc1b59dc0bc73b6e36bf4ed084b542032bf5266ce3a06d4f
Date: Sun, 26 Feb 2023 11:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677411965
