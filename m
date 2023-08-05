Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66F6B1FDD
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 08:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C32CAC433C7
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 08:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691223188;
	bh=BXtx7ManmkXDXHnvZ+clETBqpHu7mSzQSNDsoNE91ps=;
	h=To:Subject:From:Date:From;
	b=oaFcNuBHl+swVxbqYMWB5Fln4TSNYphk8yGr1YsQgn/+xR6EeLxdH8SfIEZSgxoQt
	 4LhCDXlVeIrFeQTcMLPoex0Q8H5Ki7ZlQSzLP9pjKUiAN5X3XyVxSn9/fctzR5ap0T
	 VkSnlohlG7AWNWJgd4n2PWSJq+sSnQoOd5VyHD9WTCi/q0r4aEo3N0SXxH5+pPmdt7
	 DZFu/J/I5SiamrGi8QpgmNEgQr4BSY8BIIzncIrcJd4OC1vfef2EAkS/4X9xn2r0GF
	 uJErdC3ufZsnaBK+rk7OfnEK7c9xkUWZyrwF2ry6FWDvPgi0A5370uJbI0MVNrVeW3
	 UTR559Q9NWlZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A48B2EB64DD
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 08:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169122318866.8673.5116482107817670417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aadf2ff51396f8f2ca2488c6d2fe7551c1b3ab34c8e6d2519b593702337ed172
Date: Sat, 05 Aug 2023 08:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691223188
