Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AE9F156D9
	for <ddprobe@lists.linux.dev>; Fri,  1 Dec 2023 07:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jrndcoLJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7991CC433C7
	for <ddprobe@lists.linux.dev>; Fri,  1 Dec 2023 07:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701416296;
	bh=isRQWhUCiWvdeZSDXUnHkRgtvJwYV5wBI8cdXz1D7kk=;
	h=To:Subject:From:Date:From;
	b=jrndcoLJ5AiJLNp49U9QA/kkqNZOxQ+BZ5IYVQBQlpRecX2lBa2OSxsVAwGRCqLfV
	 LgBsI6jKXNs7+kCFjM3EWf0dpVjKpQybnR5yGcpmd+njBW6YgH+qHRywlBlbkoHTMg
	 fGDLc+8gaHLV2izJp6Bl3qpNTu1OeQlhKOxoEJTy5eYUAV6bZbXXMXW1I7lIbSicPC
	 UFZEnZ7ZD2UlQZ2f4J1/8zf/VwZwE3QZUdU8Lpe2gjZnlmMkAIgNO7YnQZLLVqfolT
	 ZHNB3s4yk3TeWceqvm5+xd27PqHRiqHD30dEnHTDOxOAHKyJUc7DahZv3pQ9CzfuGG
	 Eqs9tp9LAw0zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F498C4167B
	for <ddprobe@lists.linux.dev>; Fri,  1 Dec 2023 07:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170141629638.27913.5589511918738185091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6675c2bbb4b6c6e3340831d37c93da0a314a5f92e6cf6fcd7e5574dd94623a1e
Date: Fri, 01 Dec 2023 07:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701416296
