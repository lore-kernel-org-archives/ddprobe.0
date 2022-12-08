Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D45CB657
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 07:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 807EAC433D6
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 07:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670483454;
	bh=cVrmYTNp4K6blfmK/XumjNtSYyNstH9a7otgZQ8xYaI=;
	h=To:Subject:From:Date:From;
	b=GgdPokPwBZ1XInUZpbX/V1jW9e9k/UHtTNHMJJDjPU3mUtAq19InUc1nkDK2LvmBk
	 vMe6wV0qykTN7b9RF1wqQjY5+RwvLqEzDqiO+I6LufM2T8CrIvV288imR42Ra71xOY
	 FcxFyGyzl1sf8INcK3vki0Q2aSuPQDVtmEdO4ccLUuGmOsompphjAkYRqS3VbnePhm
	 /FjDm0FaRYjxAzG6HRcUXMvt7cpw22vqEE2IfXbefpWBhS/gUNbdceRJbaVf8sO/dj
	 Bgjx3Z+Xxsm576eWU4mnJB/eB6uVlTc4eOHBfONNSIy854euhQYQi9zhovxgjy+NNq
	 w7kO1Pg3nhbVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58977C4332F
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 07:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167048345433.32157.8356636522375707427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8db200a5563c786b3b2a2e67326f9641665f36ba184e4806ab8807409d65c578
Date: Thu, 08 Dec 2022 07:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670483454
