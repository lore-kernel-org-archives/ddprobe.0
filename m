Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79CDE7E
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 08:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1756AC433D2
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 08:18:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685175486;
	bh=ydVY5z/3R4f8yTsrmDRgZiuy2EP9nW50WQ3C2pYVnek=;
	h=To:Subject:From:Date:From;
	b=dXU2P4i2cUgWWCHFHZTFt1325lWYc43+AZ70ue2VvqAHZ1HIl2IUCDIToPIsfylxQ
	 lAtfrD2ixxxB9vxz6jJ720shs1wA3mn+yvXJTkHPOnpbZa4auxVwp/FqUzBfuQJlWr
	 1NQ8vxfJf5AZslG1pj2UQLvG2wjvVsuCr8N28fp9fEZxVW4AGl1jv++4oFXCxEuWRH
	 dkoq1yWgR2eoTu3CnU2pxtnlRp+3RCerjTwduXFD6kISspgDTx8D1JZPVa+sYWffWc
	 4AxTMftra/GFDL4c3AGad4+g+fEr4bSDL632a/JRM1wkY6CuxyT3OpIH0eQQ2872ue
	 54n2fXG0CYzgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E8C6DC77B7C
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 08:18:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168517548592.2638.10639848594063718676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2bca4455dbd975975b18c952ff8e1a4d02df94f8e29dcfac454e69b3e6e5f90
Date: Sat, 27 May 2023 08:18:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685175485
