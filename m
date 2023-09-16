Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CB3D14264
	for <ddprobe@lists.linux.dev>; Sat, 16 Sep 2023 16:35:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEB86C433C8
	for <ddprobe@lists.linux.dev>; Sat, 16 Sep 2023 16:35:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694882108;
	bh=Stp84Rwy97Ugk3xzthieUoUNqSddM9abVQbfRDz6SYY=;
	h=To:Subject:From:Date:From;
	b=bDDYhgj6RPuhqbyVfY7Tf/c8vWkhha3LhtBgkjygSMQhKcSEkj1+FDJGpBtjAq9dl
	 +ELNunCcMHQgs0cpIPi3Gc8VDz0NxZCLUZ5nsQIzfXXJYD0MvyOsi6iJaniw6Vd/IM
	 ZLhKT8WLPn2VK2eSLGNw6bVM4NNd1h65x1zLXtjbU9TI6kEjSvspDyCpVviz0UyBMu
	 KIE4/sdCqrHbF26p7NJTVpMiDlDGPh1FzBbTNmqOwSbhlGgrnd+jMS8ZsJ2DXVYqAp
	 6TrotFFh05s/tZeYSvmQ0QRVIRLzGfvE9Ob22kGoDKEDg5DUyPyxB+Jwf6xpkMHAPb
	 jtQi9YL9wkhuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A255FCD37BF
	for <ddprobe@lists.linux.dev>; Sat, 16 Sep 2023 16:35:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169488210865.9776.3369548756626992563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 196b204716f081e3ab6dd29b04b6e0a85ac1ce1ac56847ad8230586f182263c5
Date: Sat, 16 Sep 2023 16:35:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694882108
