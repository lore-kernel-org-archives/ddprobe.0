Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7680323B
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 23:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F830C433F0
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 23:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670972487;
	bh=OfAMqoOsz3NpJ44DQP52OyMH7HuVNFZAa89MediqPGg=;
	h=To:Subject:From:Date:From;
	b=lhPV+3iyfvX9GMyXrtDhY9u/zQGfr1cuWy2OtCh564hfBXUrhscvCOTOZgUy7KTWN
	 5CkN8aWzrtwfBW0yAAxIAjK8mviNnfIKekFNNpHWYYZO847AIh04Uus3Mj9hJoFPz9
	 Geh8cQJ80kTediAZ92AIJwd59zmBMYVAVia5I+WK6KL8sNGvSVDTe/yaWxJdQo8kX6
	 mjnXOSoxXeckr0jUsaywQJM5Dg4LNl+7pnC9Ha+sUryDr9dQtxL+cB+3HKz9z32T6s
	 RgJiNybwKOhL18KJcyM4UKYS+ulbe9M7KGLqFJwUHTKo+DzSydUASKFv4Z8JtHLDel
	 qB2QmKlr9G/lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70C38C4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 23:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167097248744.7436.1514656175227171363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 230e28d92f6634273340781ad16fd9207b7709963453208c9af655d20f03a876
Date: Tue, 13 Dec 2022 23:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670972487
