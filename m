Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B006B7F
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 02:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 691F5C433D6
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 02:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662862253;
	bh=q7TpneP77djI+HRb4Xp1hi5TRX9uREKfLQEiCyJS4T0=;
	h=To:Subject:From:Date:From;
	b=OZDCvU4SXCpqGPtfpO1eyx8tEnJ9ZbqZft2NwdfpnuTKtXxhCvB/LuZSCKERGGrEH
	 flGJGbpvKTitq6m7PP7OyGs9qJqOWFL/+dA58jGuCzeVadLi8N0O1Yul4kSJTYY34B
	 qg7g4aeQ8wY/ek/GvmNynRJb2GHNM9/1VfzfDN27qSsh+Xd3R/Y+0dm7d4iMonzOrN
	 ErSQ8+BtHCQh8lX9/UtmKzxkR4XV3V+jOgfedwHmiLtMbnhYCICP/zV5CYtX5TRAmW
	 80MFjMKJGZSD0+Iozs6t9/ESzp34af+G1wCtNQ6R2i2Rz5D6ceDWtfnaOp43rjdDFI
	 ucDJHi8FN07sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F695ECAAD5
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 02:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166286225331.10460.10894773087674500520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9194228f54db5dcfc8eb6cb0840539a46a87c9fff6cc1726d83a9ab7b418cf4
Date: Sun, 11 Sep 2022 02:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662862253
