Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EECCA185D
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 01:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8DE8CC433EF
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 01:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671585687;
	bh=iSWBKze8J5UfcrPfEha22gNIiH2/GcXRhMclvYO434Q=;
	h=To:Subject:From:Date:From;
	b=kOX4XXKzAUFOJoyDQezqLsYrsai8mrxIeOxLTvsUCFxfWpyeZVS+VTQJAPH9d+8i/
	 9CiFleb7Jg9+NlK0q6tBMeHjg7KUJTXm1Lqn5ootKMWT6pxKezetP4wFBFQ6vXuCFl
	 qy/7ZZfbdqaOcGi7i2+ZOfrwgxTSo5DPTghSXhJ6RoRwgDNgNtrkISncEuF4jNf6VC
	 9qpK5DDdlpUVhQvE9C8GJ1ZYZKrsr+5ot8GHu50QZSqlsZ4qt1yJJwjapxmymYmjKo
	 bIFEKu5it533nSFU8TPPEbL0mRKFCq9n1o5fVqRWKPnJ1LYx/UbqfMLwRkJJJ8KLPA
	 YFncQD1qXWQrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71CC8C4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 01:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167158568745.7895.3251823077151443557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49717028aa29c5f73b3491db76e78d1d1ce1a48194a8214413fef354dcc394f6
Date: Wed, 21 Dec 2022 01:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671585687
