Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 607FD7F
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 02:17:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5321C433C8
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 02:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688782628;
	bh=fT8j/VsNbBfTXY8zN/k72Gv2UHHDuu6ikCNBhpMMtlU=;
	h=To:Subject:From:Date:From;
	b=iuQdWGOF9a1Vt//MVc9IHN2Dr2BmgEOq3OMDEO2SZUKtXSpvT7RRWWmWnq9ZZGmFF
	 R0EADP7S33C/UJ74o1Q+BFGSpuIVxEST43FbtcFDRCfLC5GilLcV9I1qrw88a5Ccav
	 RIm536kuMffMny0u9iOTDFxQX57VqIMCu9q3J+LLwDIhnOAABRQD+X86yVmA/hVQQz
	 0n+SePHNCU6TfLKJXWVyyCBEpIlpKqWJ/pwvmSg8P0jIe97bYOQ9jyZhvTu7IbVosY
	 MJTZt+igsrKwwtOHr8hdZkwiMVDfQZBKRSbFLQ8a+l2GLBhQHJOGzdzdVIMKjoVhwa
	 FryvK2JAz8eQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD78DEB64DA
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 02:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168878262870.24219.12232319286332487256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0fc271caec31b0298a9a20d5682162ccfa20ec58a7e2836c5ba8c857c9d77aa
Date: Sat, 08 Jul 2023 02:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688782628
