Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3171320C
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 17:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71C3BC433D6
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 17:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663436453;
	bh=RpURjHXD4FWW3FqDwp+Q9f5bzKHgq1+yL+f44ZyEyAs=;
	h=To:Subject:From:Date:From;
	b=XSv5ckbWRb1AaJVhx6qaPkXLCRPOLyeCH9vUtgId7KVppgBUKe0VpWUNY/bRQiX7P
	 aRePwx36yugwCNNmiIvHbhHKZAfxoUZlSblZSfrJZNe5/RJEm4oyt4WtXhI3t72iB9
	 YTbSiH3e4v3/RvmEoczvgXIzhy4xmM0pwQvAWGj1jtXX88JP1aJYiskgoLk5UOEsah
	 Xpb0339V7t/T/k+2whuaTdNzAceTJpezb6fTMxp+7HJOfi8HIsn2i7kMBaYa/CWjIH
	 npxWvu72gqPE7jFgw8MthzPuQM7CobDOz1sLDk64VueO9iVh55o08x9z8m0mQas9ei
	 T50zbo81HlL8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 576C0ECAAD3
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 17:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166343645334.11561.11243607482146998303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c69fcbfb98fb8438f2944a647ae047645783da985c87d1bf4d2d4134f71deec3
Date: Sat, 17 Sep 2022 17:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663436453
