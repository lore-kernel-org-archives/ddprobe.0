Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC5751856
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 12:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A9B0C433C1
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 12:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667566254;
	bh=LCYfM1BiWWh02p365rULq9GoKtGY4mgr7AEzC8kEnnI=;
	h=To:Subject:From:Date:From;
	b=Oyo3gDRcPWQCQElxNXWChgv15L6//aH/Il3vdWuuznjEM83gY1J3KDDNNJR6pNSUr
	 qNNYrtP8wQ0t3qdGUBVRujsMBAz/S6I3IB0fdbgfyhhJUVe3tc1jFZxTlJaE4CW0vq
	 9k2L9cxCLGHz0unEfOXzkiLF0uvTgVujm393c7e15dvfT/l2hIZRGRWX0R0tQlB/hh
	 eiyHAtpXB6PN35lguKPCgYQe5YAkEghc5r7HywNK/B4dBWf2leaMexulKfOndxXPr4
	 bP39Xx6Nixn/TgNL7LiYyO4kjU8VsmqLQK3AH2iCppZnmvs9Srd70IhiAvu7oBdVUA
	 BsT1EXa+VmwiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61112C433FE
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 12:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166756625438.11048.7997319758668811974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e830ec08f60773687a711b04d05b3a6ad52ecbebe533e35bc069664c7bd285cd
Date: Fri, 04 Nov 2022 12:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667566254
