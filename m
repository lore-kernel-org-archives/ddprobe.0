Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5ECC193
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 17:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83095C433D2
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 17:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671037887;
	bh=s44vdvKF7CD0vRO0Hfna9MFPaAFjGMniynGXpv5ndx8=;
	h=To:Subject:From:Date:From;
	b=J4DDaohif1fVlMfdHRxIRDbQ7RO1v/VcTBilfj1GTjR40qoCmIZ7uXRSd7LtDz3GN
	 3/RL+eRD8okYbqZYiXU2gqhPltC/g0Wp0KkVRpR23pgvd2wnbAJ+aViun2K5ro9QwG
	 kk7Ay4mDncdZjbJL/JPSk48mJvf4d65zf4iqGoaLbqdRGkqqwR+wKCwrgk1LLjGOcA
	 oDrGu+26+75IWwKkjupXHI4A2791BJBSiWLexLR/etKj5nptxidMa35xkqwxWuPkNl
	 JUhSqfwR9mcdDy7r8ktUF3qcGzN4uzxF3ptiCSvoJA6MUyMpsVP/PhEOXCFBdHZU7j
	 NEr+9Y6WOerCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69117C4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 17:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167103788742.6368.18170238646439058646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8291e15bcad6a503385797155d63a50fef4830a2b2cf71e06b1909becb5d906b
Date: Wed, 14 Dec 2022 17:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671037887
