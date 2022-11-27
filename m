Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8536EB38
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 02:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 796A4C433C1
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 02:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669514454;
	bh=VhMBy3FZwubkOBzh0jOrat4bs7V3VQPbkCHd5qDh4UI=;
	h=To:Subject:From:Date:From;
	b=SsRSIRgCEdAxYfqAJjwaMJgkmaYGqSjmGFLn4LiA9FdyL9WQ3sSNTg9y+kYKaunHS
	 uhDLDRf4d6I3zzy46RGnXxKOSsh7Fr/tAw/h3afiaPCFQnYM0Gpf4iJNatS01eAEjZ
	 HS8e7PI2Jp+DnVmrbQ0a/IIlW+NYfNG1bl6BuIE7e47OUZnOlVeTROjTUvISpVHc9Z
	 ycV4j7eqGjB2fDFPeP7ZDnXFO82q4lW5/onJyAftLqdkMSuwTr88nwu01caD5ium9E
	 /gmN4i/IhxARI944mMC83zDXmPaa/SEn3wJy72llKqmecG5xwuQxi9HZnZ9orpr2ud
	 QWdVCfQ6iUx3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58B6CC4321E
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 02:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166951445433.8467.4933834985893599327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b70f2ff1bf52265d94b8b12b127ce55e5a4dbca6057ba2659933f926f8448bc
Date: Sun, 27 Nov 2022 02:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669514454
