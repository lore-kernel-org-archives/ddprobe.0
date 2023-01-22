Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44B847E
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 01:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E48DFC433D2
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 01:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674349325;
	bh=rQzg0r3K7quTXmGYCLFVLJ1qQ2oW1x0lDW+wzGmUqEk=;
	h=To:Subject:From:Date:From;
	b=cb/rMMgxr2g6m4kyvMmkOC1Dl/MDwucMRLfizmxZewcuf4AfG1d5TWRdB3HqJJgVt
	 VvlgaCSmjfcrZtuflNNWyM5Mh1r8syiZmLoGKPjGFxGL+ctgb12WnCZzxTKivBnrJt
	 iu76CSAZzyTLkCb9uhwWjCbITZHOsqeneRqBaGh4ydVg1VJ2kxsgDeMz7t5Wop09pR
	 2S1MsjyLjOGLWA1Q5z2728mslAy4QItE7/wyQT2lqTvKPg1EerdzTQKAxroCcdT3Z0
	 vF7xYdcQZo8hySy2ZX5HuMF15xS/g3F9ITEVlr32tuUJsY0Q/438rEuc1U/3N40FpG
	 Ev8eIvarY53cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3615C27C76
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 01:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167434932574.9031.17045281176993281313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77554004827d74ddc80240d899def9d3420743f8c0507190b55008e22dcd62e1
Date: Sun, 22 Jan 2023 01:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674349325
