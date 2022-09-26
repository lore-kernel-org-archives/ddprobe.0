Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8F9C2FAF
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 16:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79BF8C433C1
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 16:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664211053;
	bh=Jt+0HzEJzJbnooKeAE3qtxz/uABMoEJ52f7Zg08q0Jc=;
	h=To:Subject:From:Date:From;
	b=b8k+uM1tEghZ9acrEBFNbI1X+4Z7T8h+S2yVeqonoHx+NwIgVYvFzUsS2uVw/f+NB
	 YFqi4LoLKXDdbJwq9QOfHj8sPJqb2s/Bd7cFLwkJ9KoCDNiPH2qyPrIu7KNIYNQwdS
	 3zge6QGgoT8jDFihQNLHSrxQttLXqk4vFzn4tKzcFf2SkHvGvx5wekm8k9x+rBK14j
	 ISavY9JLBz9Ku1KrOub1dWvHuA3lNwuZPZSH3XU9X3CSNj2+pY0ONgo3C8dy/ZSiRy
	 iJalInvpBCAyIE+uakjkPF7iUML0BlOCv8agDoSeKXc6ixHcaG8oMLgLHEFy6fiXUZ
	 i099VjQlOfcng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 540F7C32771
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 16:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166421105333.23553.10840536961529549099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bd7fd4370d270cadd6452ea6e3c4ad2a0f4fb9a0b3e1eabd60101ceac05778b
Date: Mon, 26 Sep 2022 16:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664211053
