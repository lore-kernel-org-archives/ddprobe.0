Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82E698493
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 22:08:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6874C433EF
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 22:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685743686;
	bh=dX4BR/KA9iuw7ResngE3CqSakyrJEJYAmZ3zRUAwxwk=;
	h=To:Subject:From:Date:From;
	b=JwBWALzdGXS/5F4S590We5TL/SMDJ/rxEQId9MgEb0fQjny38zvBICgJ5jdTbtU7G
	 E5+mbfDm1iFbL7YuNYfnJDX3I7ZkLpe5HAmGr2ySFjl+mZ1Cmc0VCmV3xLqkjaa6DE
	 X8tjwZbkW1mmRTxHvnrL34ADuA2oTsDIvtP9K2/PSkqATm53xJ/VfmyAZrzATTPIlJ
	 ZPT17QB7qBHaI6HQMPUKATXgf9aqtBSCbSnLwS/ZbU5d4Clb29UahCwy6tRIpk9GCa
	 4Fs1tUjxas1dK0imD/RtqLlvDRFeAjAhALObh5+IGWVUgiA6p0aMqYYXnORW/iOhUd
	 LOMy/nUCusjJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B84DAC7EE29
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 22:08:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168574368574.23443.11027620761081731288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce4d1c39e26f66cad4266b2ef21d01c55cd3e6502efa51383ccc60a39814d793
Date: Fri, 02 Jun 2023 22:08:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685743685
