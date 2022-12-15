Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2CF63234
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 13:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 91F0CC433EF
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 13:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671111087;
	bh=bfRzzih5ThfCuDp9hsDJ4YJX6meVJH4+AnZNeNBi5t4=;
	h=To:Subject:From:Date:From;
	b=HJ/BO3ywspMOZRZo2DGMBFPJE+j6KBtKqdORTFTtT1blTgeLOUcESiWJiuEoakqS0
	 r4YzVaKUj4T6RlwjjTMf5fd/N0K2SG75gDBIP95luympHVP74EGWvuk6Nk8gs2Fn6o
	 53Zl0oYAKOlprWDI4Fm4ue0aEUE9CwHkLDP22yOXq8p9WgMzPF/btS6UxJlbB4TimS
	 B6hSoS3xQLGKlxlR/dGrLyH/1KRk5W/w5j0aE1/FK7YQ2n7DbSofZR3KCH+2L3RLyY
	 LzgG3ZF4QcXfTnOadtK1IkAdA1QaCIbFTbKltc4jd8UG6JTV9r69r6AdupJmdyI0Af
	 tFC1sgWTxkduA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74F01C4332F
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 13:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167111108745.4230.3731623557525257993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb7084c8f9ab045bdff8de5292770b9f436901603bbf2920ab5d77429ce6619d
Date: Thu, 15 Dec 2022 13:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671111087
