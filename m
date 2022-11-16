Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D658F3C3F
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 12:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78D2FC433C1
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 12:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668602454;
	bh=dh4ZYPZtMXX9A+SWJc6N9at9GT/qxXTAfTMj7KhJM+8=;
	h=To:Subject:From:Date:From;
	b=fmi/zxQ0DzozGkGvOK5CG6oiu0leyaM3Yr2MFdcUg3O36uekp82bOSaN83IRddSwM
	 HMxXdZXSBky7Ip8HMJm4zxqCIc2fD+DWX/T1wwOGsoqahHKPnQIIoe+ks6svOvae7g
	 B89WsfIh3eWALk0v3VzjJvZFFy5cADHD2URZx5Bg6eNHNYmu4WyAiDdTKsSX+S9K0M
	 P8V+pIGSc9ub0US/qpMkXKxJMIG52hv92KbgFSGzN/oY644NFpI6GuEqVSIbq0Tw0v
	 dO3uinB/2K3czGKXb773ElHPbXqc1PGcW/9A174rbxhx39JlXHN5DE7TQLgnbSTRWM
	 bnS5YuhTWFRoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E6D4C4332F
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 12:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166860245437.25023.806011706800140615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 231042141c6f1cef75eb8da118a417a69dff5deff619f0556f5a882496f5b78e
Date: Wed, 16 Nov 2022 12:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668602454
