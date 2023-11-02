Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A0107E
	for <ddprobe@lists.linux.dev>; Thu,  2 Nov 2023 00:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JMIi5TbM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87CCFC433C7
	for <ddprobe@lists.linux.dev>; Thu,  2 Nov 2023 00:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698883696;
	bh=x+nsjf5L72bE4ltFLSFfI0x7veSocrR3CeHNC4CiCMM=;
	h=To:Subject:From:Date:From;
	b=JMIi5TbM34atFa4vHYQ7A3bMxNjQ5K3Od5tSMbRTnibqig5fjKSv4HhaTyxOBmruR
	 WQrTudZUgKXUphFWsnRfqfHxpoY/c/JGEv6IAuq0Io3aGympg46nACYXLCV05LmL47
	 Z7LPBVcZiB+Yhpl8Ohito6ct1KPRiF7WIbVEp90NuJhD2kHgQpOaHvsZ2R8Oq1riBL
	 lTcHizIQk8CriwSCbtCdhXudwFA7mcImfWVfesHtCFFhtXzEfRENjpDXW+kPTSMzdq
	 NlI6O60iDIY6XRpeJT/7EgBGJl7pZ37JHDjxe//33zt0GP7LMn3/UVkmr1lJIpqfe3
	 mLfqpKHJT2o3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65EF1C4332F
	for <ddprobe@lists.linux.dev>; Thu,  2 Nov 2023 00:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169888369638.8227.8141119825967923654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 143bda549d6115f46dfb35814eb9924cc8137f98856a9e44a067a48dd4c267f0
Date: Thu, 02 Nov 2023 00:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698883696
