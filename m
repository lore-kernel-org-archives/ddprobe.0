Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34AFC10788
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 22:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3727C433EF
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 22:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679437085;
	bh=hyeaaFuuJL72EQyaNFfkFD/QdrmfKIwDiwATSJJLjSU=;
	h=To:Subject:From:Date:From;
	b=iQnCRPc5dlyrpoQX/Fa8Wv7RIZqcNQiNrnPbQLoerZn11I04KM2ldnA+sc7cRLCr4
	 e2BPq59oLjxybglOpTve9xHGP7q0Bc/+1YJ/TAoTq7tCzox9Q/Diql2vaR/BelpwWE
	 jnBDFjrkfXb2IkOaerFTHXBcUUDoPnZ6eJYQIBXC8tnkUMyhsQFJr5IMQK+UqA7+cA
	 9qFBYi1MuhMQHf2HnHz4LAL8Wc01UVp2kFowA8RLiwxhui8HhQWliv8aL7ZauIOk4D
	 y8mhVsZNUoFQGmoQbLlK3ectrNZZdasf9g4aEG5L1l3MJOjDNRKLSiS3vypaFLIeY7
	 VlodjiAV8c8sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C941FC6FD20
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 22:18:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167943708581.14841.9664619737066155974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af34b89ced13af44f64c7ca6a9865eedadd9aec197ecbeee66d9aff2dc71f6be
Date: Tue, 21 Mar 2023 22:18:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679437085
