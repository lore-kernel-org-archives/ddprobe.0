Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D4493C17
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 11:34:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD585C433EF
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 11:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681904045;
	bh=AkBBQ18r8bdIla8mCk6AKggTYkcFZH1XtqhkuwQ0sj4=;
	h=To:Subject:From:Date:From;
	b=EZpQVS12ynmSz3qz5b10SFrlBy2T55er+2vvT30BKGmW5NMJCqLJHwhu7knuXRw2k
	 Los2t1gDqaAm/plmwK9FQbsB/b5+skz4L7Uh6iNhrtv7KNcVtxbfHYN887AVvWmeTM
	 Cms6RdyI/WsTEecNwI4z/fDRFDuzJtyg2zNurNyaW2PJM61cW/ywkCRH8kwIgng6TL
	 JSz9lWYiyocskUQkGhtdkc+7hZ6L4w1mHxQ4amG3QN43aG6ms9ZRawAZ+UwDiUkRdI
	 KF3xBQoX47orX6cMoAMmzfp/IbiSMKsgOocm/9/tyjhPCrpIeJQEP2i0KcmD5SpVn1
	 Bupg7UeY6T7Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1AB7C77B73
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 11:34:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168190404572.8542.10301525996071796576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9845b264352cd96f96fc847bd3208281f285cc20fd14ec4ab8ca82401902fee1
Date: Wed, 19 Apr 2023 11:34:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681904045
