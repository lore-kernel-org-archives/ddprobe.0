Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E09BA1A629
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 19:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8CD8AC433C1
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 19:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668108654;
	bh=odS7v2CZnJE7lz1BIrffU9gNv5yfKpMj1phWnccOKrs=;
	h=To:Subject:From:Date:From;
	b=cKTaIe8jDMXkIPWCF7ZZ8OCM8GxtVi7hKLZLcdpQObXXi9fQV1N89ZqTZ/7G3WO6K
	 DjaOWcHwlLhdBW9IPhMCZ8nplzoX1tAFSG8JEzqRE2ToeOfN21jBgapkyhvWXeJvbq
	 +nKGyisoY4PtLQrSXDuG9OYlBH/1irxAMgipCNeaUn+4ATjSK00uo+weHSUIpDEM2a
	 ISoqVkG6ChhYtiaZg45D3R/ifT5TzWy78PGgvg50piL5VPVwduw95vUYnZVefVWoXV
	 CzQq2tIGSUYb8TOs+nHuvTukS0Da5XFRM0ab0fJn8sO4Yy64vns32iZ0bkUeBhNMYR
	 9AC9DSlMOD1dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62010C4332F
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 19:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166810865439.6731.2866878501104434160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f6a0b4b70584d3c9500f9cc9efe62b91f20e8a1dd446ac9a1346d04c494d0a3
Date: Thu, 10 Nov 2022 19:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668108654
