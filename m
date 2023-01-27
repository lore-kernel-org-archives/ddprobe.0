Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43AA77B
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 04:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5D08C433EF
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 04:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674794585;
	bh=kUJT7Tpk5FGPUTaKUw5YyHXyYK5+Hf5iuP9lVFYBuqE=;
	h=To:Subject:From:Date:From;
	b=iRCJuve7V3tIURr5gnJn6Llzjqxcp5a1igXpmM4dFNZkpCnmFIeho3pyZX7PTPsAw
	 Ug23UtCMBazwSVAQniH10A/5fxSPe4qT6XIIXXwzVY90ZoyMpU8ns7Km4KFE1fwq27
	 IHUJ20Fa2jstODrgYl2X0dpe2NoHrLGUCwWUaK5zwldG1xxzIu6WUCmvkhrsivOQPy
	 whQPRRO029jmKhyGOii1B44CYSr66Fyd/gie27d7M60Z4nKQKO6DrLunpDP8CJKLPf
	 j3zh8BfC+WokR8R7T1rehF83PrbzvhMT3Yu7BGP/eHTBqTgmWt7RYxcXcfvd+ZL1Y6
	 7XgdjfxehEcoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8A16C38142
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 04:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167479458574.10343.928174027105028136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc3b063cf1e40abce9f08b987427320ab580112d53620f8369cfc7067c5f4264
Date: Fri, 27 Jan 2023 04:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674794585
