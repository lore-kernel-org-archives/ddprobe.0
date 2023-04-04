Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3810B3C07
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 23:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1433C433EF
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 23:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680652625;
	bh=objPsRZhAarcXxipByluMMQZ9r9kDYizrPWcLkCNjZM=;
	h=To:Subject:From:Date:From;
	b=iplrZC9JxrhfqpX/XAC1cU96ExN4MUKUyuJnGsaGN2ZvfvhMq3N1pl5y09COHaUt4
	 IUSEQUFspSNnVN51ndu1BlKCjIOVXzJjew14Buh5W4mgzjEEgqKAa06VlU1XK8qme/
	 98qiLOCeVv/SMYNg0rvX2XxHMaGhPaCFztQVL3w/xgxApBJrwVN/zpqyeVEoueB3tx
	 yqi45JZOe/zHJzfcWF5ICYhAcGGT75usZ4L2VW1MUCkICMDJ+e3IONApHg450iNSV1
	 SawRUHljOcs6Io8iBLQtZKTPEDSwLHRVZXmL/Wmqt5sudM9blyRnnV/AKeAnCydcBy
	 /GfgnztpXAxBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B539BC761AF
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 23:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168065262573.17674.7132783232842051466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4fa0d1213dde56993c5ce1782d505320fbe6205c3f41721b71d0353fb98e5bc
Date: Tue, 04 Apr 2023 23:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680652625
