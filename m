Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA4D42563
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 13:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BF51C433D7
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 13:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666963854;
	bh=vxfVDZNPAgiht2XpE1a+t2aMjbW4wtrsN7AqouDfws4=;
	h=To:Subject:From:Date:From;
	b=iAVeNcGldLTsHGS17Qh9636KwllE3pdCpUSAOpAAJDEwbU4Bx++la6Jseif6YZTzG
	 qxQAJL0prGEGgNnGC9pWgbup+FLJdQN7tcjFJ5o2FJA7/d3ktxgBVhkKkZJfG+fU57
	 nQgdpRDZ8thb7ty0GcOcRsH6HxLXPzh477s6U0YZ9Ue98VDh3R7SfDq0sLZmTWUqTu
	 SONP/YNI14Ym/vn5IvItSBhhdZ2sbCgmIniyrN59jLMhiOPVe6TBOlBRAAZcUnHZ+1
	 1WsuiCwwbMTKBpFQ0yo+NVPF16wruUTByiBAeiE8vEg03jBiMBYOT3KAKia/NMXwPi
	 tMnCddw7XxIpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54AE7C38A02
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 13:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166696385433.7139.15873608977311698079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6cedac78bb683a47c3ed5f61ec6b8a5490612f260a168e6fd34169a9cedc585
Date: Fri, 28 Oct 2022 13:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666963854
