Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7CCB17D0
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 05:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 90823C433D2
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 05:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673415687;
	bh=HmBdoKPlLcrLtYsziUiQs/YwViNDLgfYw4pXAVbhP8c=;
	h=To:Subject:From:Date:From;
	b=Ub+eQeYlRtgtRhjDVca8ksaN3sCoFP9eoiN5+2bH9LGR6XYCXpX1jWuoJj1UmcLap
	 dh7jTDSWzQnSe5YGkeWLXzDrarJRfOcZ9/oQQJV8ES9/l5rZIHYdRyxoNLONu/9Nff
	 9vMOYJSs+PPTeUB94SM629sSROPSYceXAN8+g9rvP+B3uoKqQ87mIeSoJZcC5VEKnL
	 dCY7fBqBCfFWtVOUZu02+gjpVA9JyJ1wonnegYwHxzC8I+GCB0JbWrIJMERTd6YAfl
	 Fx/FJEiNQjPuR5EzG8Ty5NFdzqEqvuiiJG9tpc+KstMNdqgePyOxMAyVVrT4kAuEHW
	 aajRV7DVje4ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E2B2C5479D
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 05:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167341568743.7199.11391620381739032189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ae95d7db1a3be6c8ca486e5437f84f5fbd51d8678ab3fedf761204fc36e6551
Date: Wed, 11 Jan 2023 05:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673415687
