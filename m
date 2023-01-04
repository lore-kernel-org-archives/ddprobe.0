Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBA05A4A
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 17:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8FF6EC433EF
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 17:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672852887;
	bh=qDYusmapAuHQnswDbpCJEvlLSjIFAjHJphvKqIqreis=;
	h=To:Subject:From:Date:From;
	b=Y9XXbYyETbL+tagW17YiUbuxySOIXd7a3yYxDTGsjFYVrehl6GkkBQggYHwXO2uoP
	 W1vTTXh7pPMK7hg6B0+HGCB2yqBSIO5NWL3Rp0saBjW7RuCTZAPWroLzvIIIG7/mIA
	 +SehxlUeAF1W3f7TbWfek8KQ15mvpC9lKpsEtdOMQECyhuqOeu45RQnd45JBnEwwqc
	 YV/wG0safBCAa8dSwAH8POVPLO3k+nBz6xWaQJekjBbGH6L0qJqCWV1htTEhQBLium
	 JmPY3zbMsyHv+U2iWBMqXp51Th8EVwmqgg+CR/7huJxIqcYxQr9mz4cGVuvVRUJimu
	 jRze/dZvAEixQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69447C4332F
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 17:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167285288741.6156.11033848139603179316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63fe3cf12897fae5f8ab3a1f9ea2af64fa3c5e7055686bfd5e73d15e77304c78
Date: Wed, 04 Jan 2023 17:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672852887
