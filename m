Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFDBF7B
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 04:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82320C433C1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 04:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666932054;
	bh=BzwwX0bgBCMax/BZFvxAIIhtc37Q7/bGRD/4v4nKqb8=;
	h=To:Subject:From:Date:From;
	b=VVQkZR3COIKD0VWt04hczZZt8QUZc4vSov8A4i61x1nZ6ULgL9eyqWxuhXKlkOIX0
	 ZYlizFdWZDTE15LF90STjcu+c0f+552ERaJ08aBJi3DEuBgZfv6ZUVIPQiAtvl3wBm
	 rru8p3SgNfduBuMEEfO6w3zczexUlEkiInQ9tnCJVDmfN/ZjSMouEc2rajydxA0YHN
	 5UHXR0fuT230ZB2R/A7r/v58mms57bxn/I+kbeBGH4AS8M2KtF0cgn8FAlv7pbpPuK
	 NplGspr/6TQvtDHvmADDY/GHfy6YQJT+Wacs8xguBArU9Hxqf6yMIrsCOdqAUHCAk7
	 txW/8fLej5Y9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F05CECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 04:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166693205438.7108.4929150867768769638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0844d467afba7d540840e549a2351b6f25f9f46f9466c8e9b50148f52e43a45
Date: Fri, 28 Oct 2022 04:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666932054
