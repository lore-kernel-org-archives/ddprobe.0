Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41D5015CA
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 16:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCDAEC433D2
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 16:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674838385;
	bh=IdOGl0fytByf+yOq6szFdK/l4c9ukHfUFCkrvro3WkU=;
	h=To:Subject:From:Date:From;
	b=UoCS8xDUsn2cuEGw/b/eHru7U4HT0/oM83q3h6mPYX5iW1pYNkjYC+cFnxYTYDnAK
	 xY/hTElF8DA3SCoIl33OfFuEeFowXAuI8s5blA9EG2UoITPVFp0xgZJHJdWlOPTXJM
	 cREXodQv1wMn/0nrWITRvwbglXQcCYNIfsW5jMcWtVyh9bEvQsCNf3aINqCPbyxPbn
	 Y0tsoJqXLYbHdCva+Q7OQlcwQ63PDztk/xTyZzZjIWPb75fB/TjXsmgbJ+wpC/8QHL
	 7uBEQ51zWE/fDe3XlJTd+DIOTJH6Apkj3ASbdU79HFiasiZhfGr5AFDcV84RSnghAg
	 hLF+3jkb0s0XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0CDEC38142
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 16:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167483838577.29404.11223628162173627294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aecb0c45aac520f355bfa3413c729a336ba2f001f71e6414f87c321624b5ac1b
Date: Fri, 27 Jan 2023 16:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674838385
