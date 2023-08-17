Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57A9714AA6
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 17:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA93CC433C7
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 17:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692294788;
	bh=H/XeaLKl+pCR+oWDtPzXkSt1Sq4T6BOCoe+5Ns3EphI=;
	h=To:Subject:From:Date:From;
	b=e59yuVM7cAxHiuM/Z1A+P+8k6z5rfnA7Xx+Sc/sPZud0FmRyS+iq4Va7A8eUZHV4H
	 +V8I4Yy3a75FAK/NI+kZXljdsf93w7ibZ7QTMVuefki8AJGgNbnOvF0jWtUZEGCkD0
	 cpD9vemwIVr84jBJZJQY+1awZGVG1u8WykmJ41DpLzrLyNVD/sLhw9VTeSatdypm+7
	 K/SqgeqhWbQNkt/NxlvE8kUKE1CngzqJNwApBIcBuMQHliA2Fd0U3Ff/C+OWbgavzf
	 TxWi/BMGlre9z8lpvav/VTSNPEj0YrYBlWhWt0MWuiy7I0UYdNt03vsPC+rP2l0+wg
	 npEtRXm90VkDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD42C3DA65
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 17:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169229478869.22024.4508667736090652861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fa483ce05e1bab0a5a2bd9abfdfaefb6469fe3c9a10607c875c4a8949dbde94
Date: Thu, 17 Aug 2023 17:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692294788
