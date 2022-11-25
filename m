Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD41117C6
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 05:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7226EC433D6
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 05:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669353654;
	bh=1/2UIdC+CG+HVGW+OOM5uZC2fHyamgEr0Tr5gYw8XI4=;
	h=To:Subject:From:Date:From;
	b=jkuGTvkM0+q3erBKSXE8bXvdnA6bablOfELLV9RoS29mg0AAOBJhe3bvl1rAVvWrT
	 kuNywrH5dp813OZ0nPqRfQ96XI1qffDldZ5fmzW2nifuc+lL03xiI0SsskaRhRGEqW
	 AWO/LDSOh7Z4HqBYqGF9zpuSzhcJZ2favmfiIwgscqdlQ1YEM8/qRH5M9Ss3lv6E76
	 CGNaIzUx+WtbImVYRPuLSzXNSiQeoULaNXGkIn+afK6NcVw7s8aoFuQB7l04ClcTD5
	 qo/jJem8iZpJqcvQl5tl7gmP6D6R1PTSMgX4Dwv4jQXQCu26YmFfWGs5jZOnM9Hx2s
	 aLKVbcNfjTedw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57101C433FE
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 05:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166935365432.32124.8175684145010307220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0aad9b1bf81f6cb58a8603cdc2d60092db096033bc1f893317261709cb7575b4
Date: Fri, 25 Nov 2022 05:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669353654
