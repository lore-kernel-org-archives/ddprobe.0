Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 750C48C0A
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 23:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD8AEC433C7
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 23:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691882588;
	bh=HMKprt+S6fRDe+r5seRr9Z4j7vAsAqC7JsNj3E2L+fc=;
	h=To:Subject:From:Date:From;
	b=ZCrMYZZlO6naiLxx9bm2n5ZW9GUQx34yzEMJMxmyChn31H1rirkN+dDYYINy+KrM7
	 XG/t5c2OEoDykE49rxNhoRBgIjNLYLleAjr1HnD8RwUoD539eAaQd1oRWnrP9531OX
	 JaW5aGeuQ8cM+SA8mI3RhtJcKlOzd0oqgM6sfZcympadvQ6pAn8Lgd4vZrCHsk7FTz
	 KW3Cb0mJV7gxnjN/2I7Y8zfumsa5lDYWzY0+3l/pkhDqMN7YNCG6FjtMmJtZCAPu4f
	 cD3kuTq0Wg4+7kxZn3ccSElCKsCkOZUrBRJKplNYPfCzvS9pL4TUH7iZ5artjJFSIj
	 j8ukvFr7CurHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0EF5C0015E
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 23:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169188258871.4251.9820563648966089294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e87c87e3852b9ce5f0200286eae8765ee2d420ea55c35db2f3ae0e5236d15ce3
Date: Sat, 12 Aug 2023 23:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691882588
