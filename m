Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B7CF20F6
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 12:53:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC3DBC4339B
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 12:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679921585;
	bh=7FxDPqz2suHlpHnvc9PEw6zPDPCIzdT8eQxkhZOl8k8=;
	h=To:Subject:From:Date:From;
	b=oUmk2pCqT01OhCPUm7jdLoaldKu6Px4gxKLRvtxgoFKCgdwlL3FqDvDHJeFSxYRIy
	 dEdCCD2oFMI9rh+PB9DzHD5aru6qwGUOYBLPivaVhKVlHgVsHQpli4w7CRmkutBR06
	 dPMv8fcZVIDuSxF6GsUrUXoI9QNg1fTrz5zC1B+cJc5aSuNeejygUvxu5hiecFWFTT
	 cXxRAywcd8ffrF5iGA91Sd9601abtZkA1BYsht7pZND/nFux4HTR1d+3F20++9yWig
	 nNWcUQfqVsdWfCeeJ2if+slENiN3dhlp2RcFyhIo8Y7nwk2WKEuoKbLEhh/VMWhvSp
	 h8O7fj/ZhuTpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6CFEC7619A
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 12:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167992158574.18511.9176554086712611737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18c72af91dec9355df804ce1a90311f0287f69eebd2cc0d0791228d89a591207
Date: Mon, 27 Mar 2023 12:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679921585
