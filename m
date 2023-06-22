Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C35717C9
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 01:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF998C433C8
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 01:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687398788;
	bh=8xVPN8SC7JECfWPO31m+bAZTS/ZSYQNwL2M9OYPh0Ks=;
	h=To:Subject:From:Date:From;
	b=lCZNfiEkvh3AUGoeRwR2+Pqxk+2ZifehNqZTTaupJQvtylL1lu/7Qd1Cgsan8HZtO
	 rfUymKqyVW+Dyd1jVvp3XEg200SF5YYHpDHx84ziiIX0+bEkzTBLlSaDDW3QkDFm/f
	 iPPN39ow9myzhPvsR640AQ2mIauv3qrAsJW/VZsOks+rZyeLc4DUqvDsFxxl4zaI05
	 Letr+HoQCbvBPJWn6oGN9BSdIGxi41DZzbFqJaP1jIruf3s9+LXVcYiybcpbP/AfEg
	 wwukaYsnSw56mpjIbYJzM3qLawrwlB+UbVhcmFU9v/tML083auTRgneIEuUik6wU5U
	 DLJYRVWGCvcNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC783EB64D7
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 01:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168739878876.11061.922343423678896406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7884b37f5967ae5c7abbbffbe2c2d646ba0979b34a4212e4a5810b5464acba5
Date: Thu, 22 Jun 2023 01:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687398788
