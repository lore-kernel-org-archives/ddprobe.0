Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E9E81398
	for <ddprobe@lists.linux.dev>; Sat, 19 Aug 2023 19:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE405C433C7
	for <ddprobe@lists.linux.dev>; Sat, 19 Aug 2023 19:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692473648;
	bh=+XvYpYBWfro79yAabI6N31T6xrATTIyVHzAr3FyJeT8=;
	h=To:Subject:From:Date:From;
	b=p1iBPo6z5BO52WGj21woBBlV/6X7gds1bR0MUrlIZ9Auo6liR2NBhPD7QJemSz2II
	 GT53pP9B25v1d7C6R/JCp+XJ46zXXLe0o8443AykAa/GLLSiSQ4A9KjwvzXQsuFRHf
	 dvuLN7X7939C1p7dt6S89u81UQSvlIBFWMHvTdtWliCzQeQ1edlfhC5jK3nWSNGool
	 zts2dcTxvaiCV5IGnXGyW9k+jMlzrtnH82c0ZyIIvmjWe6MptJ2aGVSByqB8zzHxKA
	 z7XbLQjxpfHcZL4B3Oqrxz5fAjhItqLD4Ch0nJMJq3OMAtDlA+3gmX5bEBF5rZrspJ
	 /SfjKnov54rzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC12BEE49A3
	for <ddprobe@lists.linux.dev>; Sat, 19 Aug 2023 19:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169247364869.2261.12341446941548606592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aef6c847ff4a0569a5d05a612077e5e20d86cc5401954f70cc7375b211bac6bc
Date: Sat, 19 Aug 2023 19:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692473648
