Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFFBE8F57
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 05:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69B9DC433D6
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 05:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663998053;
	bh=uERMrreitwzbZW/YqwFVnADPqZt6EdCIM5eCHFe/hfg=;
	h=To:Subject:From:Date:From;
	b=V49CkPzcyDwguZCKMU26siu+rwxSI0PJfqeALDkfoJlNoNps9yPl/cHhZH7D/RUF1
	 Wa1/9miQfKYXb+PvufUekJGo7zmg7xO5FKerCxcu3QK9iNftmaX9GfVC+Qi3lmb269
	 aUzz7GwqrrfaQvbLFILBKTU/bHzFpZX7rAh7HZ76DrrXA8PfIt1eNEGXvPqoYZfWe8
	 wEL/aDSjj1gUe5RyTxB/RIh1NJzyKQYtbBbX7MMkLJOw4kD+Nje4fevtDmrJV0h+3v
	 xLyaL40Il68I5METHIMypVvngRpsSqgx54rBdgOW5GGgDtJFv/0M0w4cUY+eU0Dyh9
	 aYtt7v9IGgDRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F833C07E9D
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 05:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166399805331.11380.11625886608269187133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0873ed23448246ab3c3df4e6ca781e229052648e241506135e486c942f2c1801
Date: Sat, 24 Sep 2022 05:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663998053
