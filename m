Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E64781101
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 04:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89A87C433EF
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 04:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672375887;
	bh=KsnNMtO3/QkitcJF5rvzkdRVZWCjxZ0MP5RN3BlckGE=;
	h=To:Subject:From:Date:From;
	b=DCV8KV9IFYg0c2mGCo/M2CO9tFH11HC6+7Y8NMl2+m9oDFRKVXHGs2f+4xWHgoFcq
	 68Yps0f5Z2+6dwUzXK2c7YqU5QKx36wZo21OpPs8e+aM2AzdcFXV3U6EVKv5Sv6PD4
	 KFtOHgzewHBkdiH4I1j7DGNFzL5lzwA7AntG8gA7TSU5MmkzwmO6KobG0SZqsQLtdw
	 HfyFerMJDJbIf0BPiwMGS3fk5xMMirqmlxPejH7ZtVrOtSQ5DWX5+Toc1PSoNr64U4
	 Z5E42+Y43s1TF4RdryfQaPE1y8MxWew/B7g5JCDesbpr2oSCakYwiT3R8r3v+KdCvz
	 L5nfG/sQT7wFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64248C4332F
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 04:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167237588738.32116.7874420580563400188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf2b6c7275b2a7b92539c4373acdd4cf512e4d6a1db818f09aa731094b2a473b
Date: Fri, 30 Dec 2022 04:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672375887
