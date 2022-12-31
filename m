Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08DFD2F44
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 16:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99CF9C433EF
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 16:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672502487;
	bh=SDuTnCq+eJhChu1iFwe4zY84g3HqXcoDIm+YP5zWKWs=;
	h=To:Subject:From:Date:From;
	b=eWFMvcL9OJz61IEv/rbFKeeD1/tiL1zgfKPOByIM9v44vW0BkA2CqIydPxuZK0VrI
	 CR10X1A2j1OrmteB0+oy+KQjzX0g1JK26TzlKtzEGSuQ9EXuSG67Xzcjk+paNEs8O0
	 VaXe2oF2zQ8LQ6bRc0T1P3NBqWeg7hTl9+NccJHH5QwImAPRnMoIBrmDfubX+ZE77G
	 KkOk6xrm+e3QJqEdCcQznVFvjoDVIPOwc/sQmIpwLLxE/iLQyOk+B6fIm6XZ9Mioni
	 Ak1vAUPXbPg3tGWhs1/xpc7VY9K1gJW4nVmPYp8NvKVGVvJovWpZvRUvJHIfsUigVa
	 0XkO/Rp7egKrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7A38FC4332F
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 16:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167250248742.9145.7690704928402830260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f0e417c285250c5757fdf59aff3ea3c074e2b0c8272335a049158dcb99b1deb
Date: Sat, 31 Dec 2022 16:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672502487
