Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5E93ECD
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 11:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C84BC433D6
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 11:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669031454;
	bh=WDbqTKvYcC5Sifn0nUlXKeoEQLFS2L6CEHU7G9UE244=;
	h=To:Subject:From:Date:From;
	b=eh+/CpU5xPcLo2g6CwG2bfOldzSve/tr5sUB47MOpMt9xn2JQB6u6rjEmey4o72TV
	 xpmny1U9u19urWwyP42+e4uljNfBakTu7wB+lI9rkE6sCtpBy9t2liD2G1xSPzQKoX
	 eZvMVLHcydMzoisjHW3RfynIbZmROs3ZtOR/GQegTyuFxa4I4RlO8ZtYzhS7nuqSWk
	 YtgsEx55r3Htn/HOLxPQ0Z69Qd1s0Sn1QndV9hfg04GZ/OfHbwtIiAK/7bqVoGa5lk
	 SJ+cCT7+qlnfXvq1pMA0HTZJ341XttJV3L1KQwom/aqEpXXMKn/1JqF+K9E5yNvER3
	 SzOaOi+atDnrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56876C433FE
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 11:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166903145433.10074.14119250594001849411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec1c4b4ea28365bbe5416f9499caaab18ac137cd6a504d0311978df1464917f1
Date: Mon, 21 Nov 2022 11:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669031454
