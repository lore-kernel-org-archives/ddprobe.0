Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBF347B
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 14:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B9CFC433D6
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 14:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666621253;
	bh=pSm/qCwZiHAzMYtOez0MeawbB8rV7g6s1DCYdfkKFi8=;
	h=To:Subject:From:Date:From;
	b=TFX9rhD756Zzl7C0iwgbFiV6IgkROSqjU57jvgD1iMFFohLqgJfFMnHPPgjFQ12Bp
	 ywahWDQqnUSC7S15Y1GUb5wGIc7T94AUt7EMQ7+ZApnSRjqMoirGdSvx8ejvSozS+B
	 1YLLN9RQlaSpksyIOMrV82rghOwCQqYtuZQ8TW9V3NUJXwvp25huLPRqYvTThpZp/9
	 pgODcdXsZZJCv8EbFLIVAA4kigv1yCLX8fHbMkav6y1PsYatNivcA/nIPV8gwFxoX+
	 LwSx3bkQuIIaw2nUE6zeqV7z3ryYvQR8ygEi1pwuMpsV1HO6BnwzWAIm5O8KjzZtMJ
	 Z9waiD5KeJ8zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51449ECAAA1
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 14:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166662125332.6094.6111582932570524743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a01a9f00ffa76de9f1180f134e5b21bfd6a7822ba8c7ccc19e56c22dd2e5779d
Date: Mon, 24 Oct 2022 14:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666621253
