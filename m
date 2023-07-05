Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60A199470
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 17:07:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2E2AC433C8
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 17:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688576828;
	bh=49tg61D/Khb92Vx8QJCcPUDFDU9L8XR9UXYRjUogM+4=;
	h=To:Subject:From:Date:From;
	b=XFZRoCgNdUXe/bPlAoaDmV6HnlaPyGMe5tgow7MGgqF0iS8Ql44eyE81+12qQmsEi
	 /TftxFrIRuoFT37GJkB2dl/rkiKr/iEbNQQ+xTlGhyuIdftED3aGsaUfAt/fUyd3LW
	 jpgqhbQHfY+NrRu0mq1VD+GvfFdPBI/ZK31ndfO9k5SAdZ6vxCnsIUp9nKrLf8ZFLo
	 CG7njcAFUUQzAfgylZIq/kFyym1hcybd3GJQDbRVk7/gSpSjiIVbDtKkQjD2xe2SK4
	 FMOjVv5J8NNfxqhy1eXfwWTF3gJJ1bWj2Aft9kJw90bGx/VZdYoF4d2ZXhfYUC0mIf
	 01w7GDcZhWJpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9BF9EB64DA
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 17:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168857682881.18842.12381241936416589985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f3917655d465dc73753acd79f6ad8b3270311fc242fb7446a83072831d9da81
Date: Wed, 05 Jul 2023 17:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688576828
