Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D1AC2916
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 20:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8084C433D2
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 20:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677963425;
	bh=JUzeVuV+T9ZGJdI8ol52ZSJYQWJW2tjoGWVuti6cwVU=;
	h=To:Subject:From:Date:From;
	b=J/3ILAnU/G+Vvt6id/ePM9aFieReFFS7r3nYsmulf5MGnzv+9uPkr5QnQWo3lGjcQ
	 rwR/lxyTRzGH/+YUMNcGhJH7fsqm3GyyI3w7n/SiVItmO1q8feIpan92e25MCQusQA
	 X/LzBpj9KwSGGngHfBSlM+M8/2iz5URXAx0Fz/hEl9+0zdFqUQ5gcDdFNxVHXIqxjg
	 Tg2EHc16YDMGLuQ6M/cgludT5UiE+l0Ioor8bjcUoN5ONDZfvd37RnxjMb7pnwPCRS
	 GHkPRcQpvL7JWmNNZBc/zH9ryUDLeNU+BMm97JD627IsDqhOzRanwdZuF2RNjZL8p+
	 hZjSXurT+WCQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C779EC678D5
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 20:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167796342580.22151.5913764519775920293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43f242f87b81a3c623ebaccec97a1e1f1a00be0e5333bbe8bbb7438a5067405f
Date: Sat, 04 Mar 2023 20:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677963425
