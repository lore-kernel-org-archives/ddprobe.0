Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F9637E2
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 02:58:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0CCFC433D2
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 02:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680836285;
	bh=mY1yabB/rKCogykX2TrTRw7VVMpIpXu8LxWBuRf3F6c=;
	h=To:Subject:From:Date:From;
	b=h/Iu7QoKp0OxD71zxbL/xKJHvuaImIRW45yvK6HIaE7Vtvw08Gta3wPiFolSgc8y8
	 jsOkhgHBQd869njvHi5yJ56bpk6iNnqn+xv9wyHX9O4/jznqMOxy/XaI830e4HuSO6
	 c0JXHKEs+2iEKkcMHZ9k6MZxmzGJEhuwW1YV4qKDAUJURIqIWGf0Z79z2qF13Dgx4a
	 PTA+WRpEOQEcqArEjiN1Gs8i9QQpmEn9w0OlF2jLpOohfJnMV3QKG9y5MJ/llOOlvF
	 bH2MK8fNwoJtPvqXdDfEmP9j3IfBXdGIqbuSP7FQ4VR9nNQHBoe+No/xjs6hRdd12/
	 lQm6TFTAbaGkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBC27C761A6
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 02:58:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168083628576.16805.14023876904349695916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51fa502a5fbd43f2b51b3f72e886f1a125faabfc9a32a1cf3449909f8f1b1292
Date: Fri, 07 Apr 2023 02:58:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680836285
