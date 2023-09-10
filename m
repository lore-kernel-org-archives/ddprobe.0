Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FAC51C3F
	for <ddprobe@lists.linux.dev>; Sun, 10 Sep 2023 12:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2C01C433C8
	for <ddprobe@lists.linux.dev>; Sun, 10 Sep 2023 12:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694349848;
	bh=KBT+qGwAXEHUlV3fhBGshXF4Rt6iQhF7Yk8jYBBXWvM=;
	h=To:Subject:From:Date:From;
	b=Y4TpRx28N+oiMEo54ZauCGZtr9zgEU4bbtykHXKtBAI1FdvSLr6rP+Nw7fZugHGcR
	 RepPnYwBym7UqeYPcD3MS/sMHnhEQNh5nmpHpiEASyfAmCZ8DjoUssKYRNtQ8ZNw3+
	 WkrbC8Txwo9eWtw/pFG/ut0Pwk/XFsF5Tr9lJAkpOxsqBcXi6JGYLahIvvtF1dHQlD
	 pS6gIvUS/kigLgCK6QUtcv3HjOYVLXcT3+Tkq9UxadfPF75/GhcVMaTZ06AaA9mOWK
	 alm1QzO/EsXJGE84X1cwA+PVhgPTUvZIGkvQG4shhe+pYr1NotK/ErSS1P9Q+GWtWR
	 BqUMOcOSZnOCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3526EE57CD
	for <ddprobe@lists.linux.dev>; Sun, 10 Sep 2023 12:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169434984870.25748.2300387057657296982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ac70b910507bafacd48f5320423f816ae44c4ba83e707fe15e591183e3e6378
Date: Sun, 10 Sep 2023 12:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694349848
