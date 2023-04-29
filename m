Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 692A053A1
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 18:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 11E7CC4339B
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 18:16:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682792166;
	bh=o0NCnTDMAYF7c6l5hhq5XgT+V6nbNcVTMd4KRrEOaY0=;
	h=To:Subject:From:Date:From;
	b=VJ/obgc5NLF/TzmyhSaXVfphAlvUhwnh9rgVg5QkxhpxryTdRw8OQ47atieWdG6xs
	 +LrTfyzStRFoidJ7X1dUPDKIpR+lJMDgdw7BFOIOb6e2LD4pVLut+HGIwPfUzLWGMO
	 sf5f8Z4/30xCblDj1yF7K5lIEphHWMCWCZUn4+SZ14If8V13rAvvXk5miaff2d20M2
	 IyG3OXBhKAlKzgNM+vV3uwqWaIhAkHHE+kLFH4VKbqzUQSx8dUV3Gr8I729QOQjeD8
	 /tuS/QlTf2J+//QdN8i7fNaOaq+OvkmQD02I/FR8ERjQ0kn+4EIukgFOe64UFCtq8Q
	 gvdSIHZrWYhJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E30F1C77B60
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 18:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168279216587.22904.16355339366914911987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a50e39df6099022f8ccc9737cb1fd09cde1a68af880815080f6bbad013524ad2
Date: Sat, 29 Apr 2023 18:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682792165
