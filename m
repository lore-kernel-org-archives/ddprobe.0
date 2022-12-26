Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDB97A21
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 12:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A087C433F1
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 12:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672057287;
	bh=e5OpFdt+I/YKyhmSF39mED54jZsXTYkdsXxsVgqP5Zg=;
	h=To:Subject:From:Date:From;
	b=SiOVOpdmcjg0Bmh0/yEPELvd+nP6pukY5TdZuJDzHpjwlU1o6ze2eeZkJSWUzdeMg
	 mRjePaMREPfPzNBrdszH7av+Cz1+K6+FvnOl2oeV9l5jyokgVgrMLTj/TZs41JlUXm
	 nz+66KWHqEVJHhEQudvs0O31/bW15R+yPxU2pQhY/ET/Ctfkz9gswO8WY5GHT+kpjF
	 C3zTzqgCm9PCNfQWcintSCN2J4/Zzn3cyMnxKOoGb0EcxKO+pJr55vXELKuaTRIwfJ
	 jnU+CF0kS/2AvQWm/Wqv6GajRu/6n5uOr7phSG2ZR5hQsX4jyF3eSAj71gdux7guVZ
	 B6ZyYLBNg0n+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C6F9C3DA7D
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 12:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167205728743.20272.2258979302478325683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5596c7f74d929346239e1bee179ea3a49c6c6d976730176f617c746724176df3
Date: Mon, 26 Dec 2022 12:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672057287
