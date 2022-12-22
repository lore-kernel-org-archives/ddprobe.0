Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C72035CAD
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 14:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CDE2C433EF
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 14:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671717687;
	bh=heIanFq+O/NnXfjWJSF9CGOyfu9mLCBLlTE1ufyQ2CI=;
	h=To:Subject:From:Date:From;
	b=CZ8E7H+8/zA0U8X5o2B26hdBufyG5tdvEw4GLz+/fOADLGW+FuaUWciFVJkKUa0OK
	 5rZ/hRYlcvQDT1xsXJh6k6/JBh3EE6nKZb5zdI76e//MadqbInO4jnvwhF/yx8XwcL
	 nHR0ecax5nBNWmTf33hznQZp9SuhlgB4qFtaPI3RlBwsw2OHRngbjCpcth8Db/N5Rc
	 edi+YjfnbQJ6HyyTe/jMl/FZH71sQOs8BWUi/t7K/1S2Ic+Ukr5tSjTtnDPnELPzUG
	 YjMbFSHkuHHfj12rsEO+UqYbxxaN+k9Jp78vx8LM7FzF1vEQnMNFcXzZPsqZB7SFj4
	 EypUvWBUHJX3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64ECBC4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 14:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167171768740.27933.4765451976022515249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7097ea4ee74f50fc6dbb8095c898666c794391cd2e5faab593707fe9fd0bd784
Date: Thu, 22 Dec 2022 14:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671717687
