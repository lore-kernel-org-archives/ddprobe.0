Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67D8F34CF9
	for <ddprobe@lists.linux.dev>; Tue, 16 May 2023 16:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 078F2C433EF
	for <ddprobe@lists.linux.dev>; Tue, 16 May 2023 16:23:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684254186;
	bh=utyKBjAnBYsWsfJpwd4oTY2y6RhQWPHAsDNIOGsf/NA=;
	h=To:Subject:From:Date:From;
	b=ktRY1BEPK2ivjua7k+brSWk9w9j3twtm3XwWwmsOPfN0RU/8fKLR6QievHNXSmYBG
	 ZMrNdShfI4an10FEUCz8++fsUxQeR1lED4S7KGvxkynHid/fJxKLnX2oDXL4qFZfh/
	 r9SOZLU+ru74dIwap4fJ74OwyrhJKjKo3H9/Nz2NEVWs+zIlp2VoP9/vc4Oa6kKhhh
	 mFePmvym/+vLB7zRLBgbX1yZhCy5E29akMuCPvh/zsMBlTEKY27w5za00/PjkfWS2Z
	 1GyEDg1e6wRHkD1ARSlK74XE3LBuq2re2NKUB/m44kZ2X1dkNUVFF14JEEczxxkMD8
	 OrgZBgT8/9r6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DBF2CC77B7A
	for <ddprobe@lists.linux.dev>; Tue, 16 May 2023 16:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168425418588.8561.9330627285448641122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1793f7f0960dfb39ac80a2ff569449beb62d90a2be13cb7dc27991b2c013d735
Date: Tue, 16 May 2023 16:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684254185
