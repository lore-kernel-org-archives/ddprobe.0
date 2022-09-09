Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD7CC632
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 12:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72CF2C433D6
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 12:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662726653;
	bh=Kkuw5O3onXBGSNSn5wksiOPqV8vcvLIA6QbSG3SX5mM=;
	h=To:Subject:From:Date:From;
	b=bVWScAy6++apmetHCAtdw5fieDWZDUqAwNUrb3SNYpjAE/tTxpVBHokTCwZtsVs8l
	 fgLgn27MtVtq3+ZNNaoUrHUGJrfv05Uf2RznorWZfxDAZq9zxTX83Ytw9fDKcAxcj7
	 oWoqpO2nDx6DQjeE6WsB24Nqvolb7iMHTxy3ApTJFqz4bMVIpymMFvIPpXVJJZoSBy
	 WwptCiEL6zlwMgc+/AORrKKbX8YAJloHxBtk04e5K1839GFLO/AHrtjWA/OCdwihy+
	 6MUC4mTwY1x40tHSzFpaaGNd7XK5jzmsxTfC09n1xui9BhRywBjZOmKuCkN5QKJZx7
	 +dCthzcdaKfBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54DDDECAAA1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 12:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166272665333.15845.6331276688282295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d963e34555694bee28b524b5a23432bd62d7618deee1403fae8a76a2be7436c
Date: Fri, 09 Sep 2022 12:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662726653
