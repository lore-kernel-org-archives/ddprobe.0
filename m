Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3237662C
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 10:34:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3DD5C433EF
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 10:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676025245;
	bh=UqnQmVFls+z3ItN1LCqW3zgZMPyrm4AhoOY9af0lk9s=;
	h=To:Subject:From:Date:From;
	b=hWDwGPBtPr+z0S+9kQsT1r/xzP4E2Q10H0xEAS7XHbcoPR+SPsT7SGgI2nysaoTX4
	 RUfG7LVBtxWJSxx1oLRQ7kJkxK2BwnpxcsP5nOXCh6eQ4NI9Y5xCX66dOeGQq0C3ew
	 T/QOa3HnLUrjYhVeXM1rNWtboa6g81+7ZMMHXR1B7PEH3vTwAIhCV6P6UAUw55lkl2
	 vwZZvXB4sS+0fq/0mAHwXRXa8iHJVVHDRB6BGyqmqMOQ44iXGEFf/GZQOTmoOowx4M
	 DCII6+HTRigtyRNel4Lv4JVeOBhTw0X7Y971MOS6/k+2rR/W+Nnkf4uyLUk1r0mQvV
	 zEnrB3WujlWmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9CE3C05027
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 10:34:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167602524575.769.17467605781153441803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8434b7ca9df8ac760e5074b810de19f9e14cb1db60d7cf2198b4580bca686ff
Date: Fri, 10 Feb 2023 10:34:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676025245
