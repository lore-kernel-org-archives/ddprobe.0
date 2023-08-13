Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CD0E7E
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 00:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD666C433C7
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 00:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691886788;
	bh=QGyIjFMzBci0OBFBduG2o0RGgZ1fws1C3/sKtfSjypA=;
	h=To:Subject:From:Date:From;
	b=Rl4cOI4leatUdLtD2bzUHEz0o8bKwi769zbuxvWo2RX9KXs2bkjbJlWsLpd8+cM/O
	 g9Td9d4Kg4+z3rIywQcuOnTWQzwyVdRg6NlasKXHJEzRtuoy6NF7XATZLortKmbitN
	 LjyHqSIiJJP4buGHnZyVlTn7rX14591jJU03qQPFg2nzRQ3qx10PSZIBhCpGaC9aw5
	 ZP6Q7LOCNrnb/oK8uU4gbAe4kXMqyYGNjAFPHLLDiEIkDKSKgQ6URV4gPFlkvZY8zD
	 Yp5lVJSoPPbueUo0GvQ7AabRGa+sPDOt+UGfjVIMpnycvv0D903ZWR4fPLS/vF4Qfy
	 JAj8qHIfCSQAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADEFCC001B0
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 00:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169188678867.7159.5657928673745727595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4147ef7cec4b598e6774bba3a2af34ee0d92d85e4acb470df0a310ec639cc4fa
Date: Sun, 13 Aug 2023 00:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691886788
