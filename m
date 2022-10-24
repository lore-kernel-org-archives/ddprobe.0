Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB5F836A
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 00:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E4CBC433B5
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 00:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666572053;
	bh=/mRMsvDS7jdhD+mspsIQzWWK9AT8PrZaEqHiWBpxrpM=;
	h=To:Subject:From:Date:From;
	b=t8LM3PtCDJybq1W1TKzd7XDv2Ar7lpWq5hNkKay+Mdh47dY2zez93Z7rJbZJdEPPg
	 zqstkgi8WBBYmbDp85YmPC3bqzZbZyIPfcn+4299qaWb5V+8qVpdp4MyjPuHVhqzvV
	 ERlGTdFk8Bm4NWbc8qK3m03bvViCx5wgYu1gbf+s2ZKfzBC4VT5Cj9biCnD1ek5cfD
	 w96eyeeAPpb7mX/4trjPyurcNU/0DDxrBxc87OqoZLrmwWW8nxoC2hJ1jOqIHlivXN
	 xxqLhBblSeFLCr+nFjuMQhUAKeWs8UM2a4fi9j133sMcCk3ALswVn+EwZ1vJwgCYhd
	 KBJRi9HTw+FEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 515B8C433FE
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 00:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166657205332.16244.11882180419293959861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d13c98cd6756d80b292d592ebe1e9f00e6d40731ad1cbe7ba40b42b6fa980a76
Date: Mon, 24 Oct 2022 00:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666572053
