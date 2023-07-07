Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54C5210795
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 15:57:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE6FAC433C8
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 15:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688745428;
	bh=D3MAa+xbgsExz0oiVY0Phl4SqROafkoR/VrDDgezhBs=;
	h=To:Subject:From:Date:From;
	b=EObSc3ZjRTqcBC3aJ+SSiVfBHEqbT3cxYqr3jbY9LKmxzyVoH9ZKSA1uIOjsUloP/
	 yZJ6o81cFW19j5KpAZHgLzre69Xe+TCXZPkic7XjoyALbDrMmMnneg+G/au1YKtWdj
	 FfACRdJCcv7ddhbfSoHpBWKAh4TIKoql+OasRA+mAjePwaVATOo4XcNgkkXtDKGhMD
	 k6GrxcZrCWdBhr6VaCChDJJGpAnwVcaoNZ6ihnVrDbfeZCFkjgDQhtUR/5m/wC8qNJ
	 aJ7Rb0kmQqMpeXIcdjeG3CfB0BzBWrdGL3m1BOwi+5mUOwiLretqrRV2KIoENhN+A/
	 qn4dh5EAxx0Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7D42EB64D9
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 15:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168874542867.29494.12889176339576053151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0491c28ef285989d508cc60ea06009059721b3e45dc391140a1e4a6eeaad4783
Date: Fri, 07 Jul 2023 15:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688745428
