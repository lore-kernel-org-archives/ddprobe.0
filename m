Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C50DE7C
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 00:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FA8EC433D6
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 00:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663634453;
	bh=uk7raRHdpCqIu0sgh7rCkWpV7vstei2xEXRYCmNqSEY=;
	h=To:Subject:From:Date:From;
	b=DdisA2u59b7DWpA9siz1Ac1s0bvmydrXGyywk+t29O13gp1Yal1u94JveShS9q37x
	 ZQ7V7qJJso/Dvt/R42dwdm5ixqzQiI7YNn7O/YbgsbKgFmHshoIN+2WA087FO2PBxb
	 RlLzkHdslVapklyLl4JdEdmqy72DRFBXYKQ7eEUBZmZC+N52zCr9trH6+H1HcvHT6s
	 FS3L/bC3SpcBxivzbcpEoF8bGTl2AytIc8vUsm7pLaKYskzpwiV9HKwtES5zPwPvBG
	 g3aRXXRieFG8zN0oU6qLGxN3AEA4v2//T5QBH3T8bP+90aXIoRPAsaPfUF5S8ak/j7
	 VWUv5YuHXMwBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 525B6C6FA8B
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 00:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166363445331.6792.1468940220769222742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56ee54adae3c6d780c809061927eb8d5162e13a474ed69bfcbe316d2b3f64eb0
Date: Tue, 20 Sep 2022 00:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663634453
