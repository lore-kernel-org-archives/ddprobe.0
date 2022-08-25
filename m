Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD36E3C14
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 17:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A21BC433C1
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 17:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661448652;
	bh=kbY5axwjJxD2Cok96MU0PlllwDWredDWxKhEEZcbh3g=;
	h=To:Subject:From:Date:From;
	b=izlV1ip5N5NsCfofvZP1Sg47Sxd9P1rGOB48kjJSy+tgBjDsOq4jsJyIVm56spOc7
	 T55ZAL2bUZlG7zRU2tY3QMuhFhCS9p6qvs2nSYo1l2q7/9+UQyINjDI2QVMT9uu0Um
	 mcpJRVQOjYAcTbL2wHJ9tqvzPxWHyQPLT+rYwsQzGr6vb+oI+62Mnx3bWi3gN9IElj
	 6/NsV8f7HHIChoMxii/s+Vwd/D2FqoIIq+5ISvtmoeWNGGGJ5pTEJZJH8IORlPCq39
	 RI2jTIC1IrMbBqxhj7HHkTWjUrOZsF/ostUMtFicxWh3iyyCgCvZLz8RDWWjUtnMEw
	 7H6Ri8j7oevGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F2F4ECAA25
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 17:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166144865238.7826.10181267549776037097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce44bc71ea8e5ea83895b178d118b6f6f9ae5a8ede68424577c731f06bc46626
Date: Thu, 25 Aug 2022 17:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661448652
