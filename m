Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CC8F62F
	for <ddprobe@lists.linux.dev>; Sun, 24 Sep 2023 02:25:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA1C3C433C8
	for <ddprobe@lists.linux.dev>; Sun, 24 Sep 2023 02:25:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695522308;
	bh=0juXnx5fiQ8I1lCzhTxO9ohBaaNjGbvCXYgXc+6I3eQ=;
	h=To:Subject:From:Date:From;
	b=cMA+VPcBxY2BM9faQlqsQFSKKw+bHSlEeZUcRWsNGiA+TWFd+eogCO/RaBWSoSIWN
	 4Tu+26+JMA706NT3Zk0k6grlQw2E8wEcO1icW4MTxcnEXqsM72e5IaTayNVZEm7XZZ
	 fUReiTV2Qe3FUktFqcmOc2ZEdlV5+qf9v89EJLmEhFPvFkfSHwbDSK9WDua7hRhBw4
	 YeNMf6vkcTuvALlK30EjoX+iu0SOWVzYWr7uwP7pNq7v5sJk6VK5s/iuoKcFgbgGjL
	 3bGxPyF0IFN9wQZDHLJX0RpbBICuh7xNTuqletnRf62d4NYLzvZzI5sn1omzOJw931
	 EbyCGAPDA4R8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6A9BCE7A88
	for <ddprobe@lists.linux.dev>; Sun, 24 Sep 2023 02:25:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169552230867.24576.3591641689740958391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7e2aeb1e45d975671ae12fc372f5e189ece09c46808989ac121406e779662e9
Date: Sun, 24 Sep 2023 02:25:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695522308
