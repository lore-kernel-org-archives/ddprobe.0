Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAA3810FB
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 11:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8873AC433EF
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 11:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673781087;
	bh=bhAr/62stflGFZn6eIRy00o7Mj1ZHXNpTJx+Gx3S1eg=;
	h=To:Subject:From:Date:From;
	b=qqwK84OMLr3Fi8AUxvu1346GC/CwgmTnpzjXx512FHugRKrnQ7O2aMQkSMbTva3FY
	 fgwaAEUtOFh4qI8MfCMHCAwc1hCe4qPeQFQ4zoGXYjZEN/zc/mRHmWtMff3d90Xlnd
	 a5n/mjInIiJqCR6gD4keAeiwcQtmGM0g1lj+K9CVXh1TtKeR0p8BgD5+JMJ0WunOhj
	 v+ySKN7JBrY8Y4X1CrPGeqTDJ1wruIbKaEtMhZpsvqsL0/C3ZnWN4SDAvgXFNqWbFv
	 uZSNOBakxd4+akh2zxWjG9MhgKxhCN+DAg+wtDwWIpUdmdKkeq6n2MjPu5X+UQtyEs
	 pRWOqEM7hykSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 693FEC3DA78
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 11:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167378108742.3841.14898586019385084560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7429e01a29d347c908afc8b500bdb1a2f0b8ae43a4c891acf122f6401818df83
Date: Sun, 15 Jan 2023 11:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673781087
