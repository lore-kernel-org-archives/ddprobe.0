Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BA7C3220
	for <ddprobe@lists.linux.dev>; Mon, 10 Apr 2023 18:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEAB8C433D2
	for <ddprobe@lists.linux.dev>; Mon, 10 Apr 2023 18:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681151525;
	bh=VUuB9CF9eLqp6RkAa5W7iS2b8v6IxoXJZVLQFk77/mc=;
	h=To:Subject:From:Date:From;
	b=Z3QV41sOJgzX7m9yCGIL/MVLUmx4SLn9t62532mnBNI5f7w+SYEjWOhvpFWdgF97S
	 YMRJz6kWJphoJsMBryljTcmzT2WmQouoQs3Ctw8sgUDqCR3XBRMbSFTqIZEKxrMYt/
	 gWI6Et1hymzceX9EgsY8Iw/ucqcidNnBEwTxGCw5LnNro1SxIlM96iN0z5OkW2tp+e
	 nl0Qa1bG5UXDdawXrsYHJIpIpOOLa1iqFrHcxdw4SC+yPPapL5rSChwOB7Ql3ft7F0
	 5ZpC0XvVD8+Xf8/xr6ZL/SOTb+1+RDZyqZsYV4/veeBnqHBqOoG4M+eHz0OU7ohhyh
	 tepIq9DSljkVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7148C77B61
	for <ddprobe@lists.linux.dev>; Mon, 10 Apr 2023 18:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168115152574.5026.12374812244884393933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 201ec62dfc57e05088c6f97c88955ae7126e014f67ba642f9dcc6c8553d5c372
Date: Mon, 10 Apr 2023 18:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681151525
