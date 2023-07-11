Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4090C16432
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 06:27:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE94EC433C8
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 06:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689056828;
	bh=WRb55+EpS+/l3EOUM1imnxo+m6sFX1LR2O3B0lPXVec=;
	h=To:Subject:From:Date:From;
	b=tLYSifo/4b0WaJV80AcmsPnKhCsSN54DBGtI4ng0cQKUOjeZ49I1CpzVKWVrGYLan
	 9LBmH4NAN2P9NoT0nYLjXdumF3QxoNRTzOlhhwGe0Z7Cy5/wWCE7SpD9BjLqgeqE7i
	 uhDBq212bcrnQ3O0dQF9qEGRsKguD7C0LhHTFw1fPdvglIfH1liBHtI4LlAdAoQH4g
	 O5hJW6S3IJcLH/xffPAghaY7irL763PuBLaEaabcaBeHY72nYIw0KAiDUmFZ/LGBgB
	 jgGhl5pHSDipDbepajz6AzdNjZ3/0m/ZhXJfKxmpi1N2yDBJobVLliLvNW4mhZOfcg
	 7oGBYRmqCBaAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7658EB64DC
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 06:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168905682867.29076.7755318888472922433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec4672f72d2260aed5dfe262fb70978a55d1ecdf2f14d5bac7f16940efca01c5
Date: Tue, 11 Jul 2023 06:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689056828
