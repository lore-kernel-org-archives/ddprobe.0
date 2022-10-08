Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF8387E
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 02:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CC96C433C1
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 02:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665196253;
	bh=1H9o1qgWdhfPwSQJwBra41Suro2wDsf7Zi8ZxH3MHKk=;
	h=To:Subject:From:Date:From;
	b=It6apHdOFDkyCalHCqpUPXaKUQJlws86i88VJFCaP0mVnV7XAzNr+cnB0oryjp0g6
	 BNMQ2fTV4Tge0RXQa8mfhiqDi4PVtJBfKPrn3atHs+9bZ2M67yumFAxUsaYanzIXVx
	 jr/rfyKzECx34e+6XA2t9jslTLyrS1h0+OctIKqwOQi8aUBTIFtTLFpc1DVWtTDpqy
	 Vs64wcnd2edBQPMko5MldNSic8hQcNFnpdQ9VT8PsxchweAFafoe++pRkIhWF09rd6
	 EGV0d2dquwE8sYvY+8VR1xL9d44UZN3uN5MRQWOxsExA5DIIDUJtx7UVFcf+xz/ZUt
	 rPeXPCn0USQqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51557C433FE
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 02:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166519625332.24182.1858654269048467109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a933039debf93d56638758a8e1bd42e87a77c6b090ecabe1c8c0bdfd58aa323
Date: Sat, 08 Oct 2022 02:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665196253
