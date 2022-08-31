Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBCD12580
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 14:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EA95C433C1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 14:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661954453;
	bh=HygGmLXTUW3xLJYJOjOo8AqGQtYdONba7vFGJYtrb+4=;
	h=To:Subject:From:Date:From;
	b=uwukPDEZQRv6ICQtX9iM4sRvB0oW5wKsFxBbX1lTL7DQqj/Mt7EY0KWuc4QQxH3VQ
	 vjGY4O5KcitmAhUUCYuKNwROy4vjwPLPayEfEtXr+mXiSa5pT4UyJVMjCrpWsErmQr
	 sAnX4tDSJBvnAkiCrq/kFNsAPvAP/um6Pq9qQtZSQiy+G7MMLYhm9W4sOn7O3TDdr7
	 GtUj2ltotf20bvFtU3LWF3IEPTK8P5QLu2SOQktX1mQ0dDwLt0YqEiBKA+Sz4G0n3q
	 idNAGZVf+kGerFbJw9sRrbxhofh0opIc0H93T5rmUTRDGuLuXrXoxGeFxqVmTqPOBB
	 9ougDhZFeGptQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5333EECAAD4
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 14:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166195445333.24532.4921071329525739237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10399e55c27bd041d6756840009ca8936ef8420dca5c302b1dd287be201c16d6
Date: Wed, 31 Aug 2022 14:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661954453
