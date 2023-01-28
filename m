Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4169B2570
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 07:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E14B5C433D2
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 07:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674891185;
	bh=fV0vGZS/fLd6ASpr/5AVwFDRoZLiorZQF9AA8h7wffo=;
	h=To:Subject:From:Date:From;
	b=kN8uKpHFFSOeAPU3MurNAccj3jW8G0ZjkE2KllemaORa4TotKfpgp+aC2aMs+Zqzx
	 +VHl9zfv3XYm8TJQSfNGn+87Vap9Y3v9CSrXJrJIrZVtSpQh9tj/l2aOEI/GLO7UnB
	 kbTE2MY0nGlAc1gMB29tRh3M+pRMkyoXnwDT5oS5QYagb8dbk2S5rggdtRX/jduq1W
	 WPA/ABXxsdg3OcTdABxZKxbOiyM7IllKYe2VaqBAM+0wc3N3Cd7u9hFw1eyqWB5f6o
	 uGEqoXO4ahE/efcAaqpEPkAMc6vXlszYqX9MYjhNBCKCE1i0uN9/L1bvgrcfB2+qfE
	 xEOea8ARCObpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B98A0C27C76
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 07:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167489118575.11176.11960158171847313762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c44e3da79bcfe45763f3fa7e97bbd753bd1854839ddb0038049ff115f40e123
Date: Sat, 28 Jan 2023 07:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674891185
