Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE75A211A
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 09:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74429C433D6
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 09:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661763652;
	bh=LNiXctFTup0iPG/jXl3iMD3oRp3i25NBTxUUtXmM9Wk=;
	h=To:Subject:From:Date:From;
	b=cXynanXOPXdvkgT3LjcO0n3dCioliALDKhL5zfDQEUNq6LZRk51V60UjVFTHYBYE4
	 iT0ecU1QdncyoC4pFkgvXmnobfm9kN3ct/7dWiuIDbmGL4pIbgIqpgZpN9T2pAxt4N
	 zzqUPN2a9tP6zxnnnnPJMRksGfmfIVQ19jsRJHl6cJejdyoyefQdZ5GVMnjR2jBQ8c
	 8Yn57+cgLr5xbTYoeqPr4C+s0geErHgwRoTevJ0gT7OBCJBY2ghuRyAtyLY/0wL3x6
	 tieimzR0DkOWaLXg1MrItUfbaHa0kfPkWIknte4nsIMkk+H/H8SzHp/BNQh881csN0
	 DpsEBKRuQ4fcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A60DECAAD2
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 09:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166176365236.22062.12869514976269782402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 207d0439f581f7e82610f0773fe8da831ee4bcc29f26700f7e07cb53bbf7e170
Date: Mon, 29 Aug 2022 09:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661763652
