Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7F7BE833
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 06:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68932C433C1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 06:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666939854;
	bh=nzNRT/cE8NVoMsiK7oXOJfdTYrdUu5zcS5PDVeum1iQ=;
	h=To:Subject:From:Date:From;
	b=R14qXD2uROT7vBSTFRCLqlNMd/rlYS6UrHg77bX/ICwod9L3+Kqm/tp/hBIXgp9f2
	 V2Tg5qXvpsWVHIeUFiJpjjQwxQnyWSsQsApG5bVDkNc/IPs4y9losPUYt4qAAIF0pt
	 feg7xPxiDV6xrYoXbnbAdpFzBge06iwS/ODonhiJTyFKO0JydX57T1Vu3FU+oQXN9M
	 4hdaW4xNpJ2d4a7bP1sSEqqVgRWOYT/3+vCagtw7JloNJLaJ74InFu8BKqRq9a9p5s
	 3zQcRKa/PFABY6pu6zeeEtwUypFXYImUU5pBJIjeBiV7S+HGpuTz9DiROz7WWLZXc+
	 Zxo3GiAhZDY8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52E6FECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 06:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166693985433.16186.9304919109425045788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb9dc6206372eb27b191342268aa20c579338dca7fd02122db098a973579f1a1
Date: Fri, 28 Oct 2022 06:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666939854
