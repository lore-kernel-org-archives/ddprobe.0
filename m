Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57DC5187F
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 04:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1266C433C8
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 04:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687321388;
	bh=S5Jprv1T5CwNjsKmkCHio8GmFlR/Z2aCr+mKcEh1vBQ=;
	h=To:Subject:From:Date:From;
	b=axLkxqVhPnf6qYH5FMk9uau+cEQYvdW5LFAGo/d+I+7PGglB7DH/6HZ6g8122ys8B
	 /OEYPCSkuOyhwL47hRJ6JrkiSQClM0RfEYXv9myeAqX3FVoN1InddMoz7FKSr/nJwE
	 +JmA0/BGUIRz68YhccyegUAhk4VD7MHj989gh7YPxQmb7FNU+nXDtDA4zLtRZMc/fh
	 SpPaENc9BLIOd3Uytse/2RL4uC47afzMjJEBjlfl3x4QOyns6+ZpzSiOAOiAGS/O8n
	 qNzQhIOoSHm5METrwE+nbqn4Z7WVOk4+Sn6hx784PPN91Kt7O0Y/1zfTas8lyzZnhB
	 UIZdIPvioMmjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3C6AEB64D7
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 04:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168732138872.7112.13847365443923571671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82fd8ab05a07d65fc986e1a04ff467a524ff8662f294684b1bc66b161924a9ee
Date: Wed, 21 Jun 2023 04:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687321388
