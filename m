Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D24B010F7
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 08:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E979C433D6
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 08:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668329454;
	bh=aNShFCB5kHC4rsz9FnskNMlqzxaFI8SKjMTEUz8XlF0=;
	h=To:Subject:From:Date:From;
	b=cXt/iTvhEbM1lxQgje2yt9gfhhYY0xyCl5EqBQmgeBtEi1iXdr8WsX70o7AdeKKET
	 yM7J3J+6gW2Lrs4C0Fr+7JirdTGtVUyxtECZTRjWI4qSWNmQJaBnE3Z6DmGq/8/BAS
	 XBL8rJfIJdf3wVRva9xrdIbG2IgOwtR4mHkYEPWdVy5c0aA/BcLs0zFAspZpuERCEn
	 /hP4LEJXCNaZ2dQBq/d+hA577QhGxcEXu9InL/JBsPb1Tl82Vqcylggb4zdiXcNBMe
	 D+Ujb5uLzO8BdhC+8GwZZYS02fOn4w4RfTNK2fxhgGB5+M3OIhPdFMPsl3ed2A3nFB
	 RAEJaE2kWk8DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 631AEC433FE
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 08:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166832945438.7699.678812285882448530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80a54d5ed2896948b4927a73d62745fc63d9e0afe8f87f24a30c7462f30f6f02
Date: Sun, 13 Nov 2022 08:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668329454
