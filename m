Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A6BBBA44
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 17:50:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8745C4339E
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 17:50:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678211405;
	bh=YArlQcifiwLkfud/F7FNIqUW6bIkzpO96fCJMpRuQZI=;
	h=To:Subject:From:Date:From;
	b=HccNmparVtCf6/rXtHgTZZ36Qv89a4Bk/Yj6nNUYhoIGrJVkEPmhh8t3DeDT2o1ld
	 rWszHHM7vttJXDHW+H/NdDm94dJkqM2Mqtu1cruN267lM650Y2HXrTBTyJ772TsCsl
	 gFjVQxUZAy01gqd86BBMyJXohSUXzw/zMwkqD7lD71U+Kva9H8x50WrxU/o5PnVWon
	 enhSFWl1WmcilYbj+4SAGLrFacyapHjoEzH0HnuqD4M8eMKvSlKQM5j28vWjF5zobP
	 69OYzZf8ZNc8L1ZvDzfU6m/BtGUtqChG3xmMbsZRXA7RPfmxd4jofvKBDhb8iBMrCk
	 /dQf81aI92x7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB228C678D5
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 17:50:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167821140575.22286.1092604386187691463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b866de17575041e520e37375ed8461f1ac77d96ef319cb85d1939380626ba930
Date: Tue, 07 Mar 2023 17:50:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678211405
