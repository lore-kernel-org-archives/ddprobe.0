Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35CB2F9F0
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 09:52:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4611C433C8
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 09:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687254728;
	bh=eT3A+OcUG/S1geNPS07gYIrX7HAf3mVewuA7jGuBco8=;
	h=To:Subject:From:Date:From;
	b=RjbKI+74XQQzc03dWeULlXciH2owc4L5urgFhzaHP6cNJmRqp9WlNjSuteCNcwv58
	 H4V9oqO84HIacAne9fgiGYfSFRoNGSQWW7KVUtjjlbFeLOepL61lsCHhPRbaQ1grSx
	 q50C+Bq5k+UTeDeQKtkKEDy88nChssYjcVT5sURueE3fvmLjJFNTr73O+WZt97Z1IT
	 FRncYW2ac54STP2Tg9ACu7PpyjFoftgd5V9HCWrnMINDX6ER8/k9etcBZerIeo57Gy
	 rgm97AI7/8tUUEOQA3weUMj8jAxMdys5p2k2l8zIGxhNF1MH2tS20cax6D3FlzAccM
	 1+KB2ozciqR9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5E3BEB64D7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 09:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168725472867.30660.7906045466222838267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b28c44a740577007057b6830094a84b05dce7c873959909bf4e3b6fc46affb6
Date: Tue, 20 Jun 2023 09:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687254728
