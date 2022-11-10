Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9C5920F6
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 13:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C2A8C433D6
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 13:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668087654;
	bh=v+tW40kDFghMxaXiwAxO9CGZ1TXBR+hr6+j3hC2jOkI=;
	h=To:Subject:From:Date:From;
	b=uo6zVbcfErtOPH+/z5H0vaPMVj9gE+y2p4wbpEr/RjHHxJ4p0nlVTzfVQTyxFj1Tg
	 79Jj7yx8lHkefOjgjOQel1O8LjzCPfVKrCrnVQZS1nc1g9uFEte75Sn6+rYAzfq4Au
	 A1WsYxsIIZVcdymo3f7JaND4ImgfTI2r+++Bqy5/4mdIR4ff35VX7BM7DBhNdZ+lKi
	 IWZuLJ5e+K2TTLzhCkculvYY0JDbSyJewUO9o34eY4w1lyvlIo2zJUH4gzOPcKuA2H
	 XZUIeZAu+7IhGg6oy4iSyuxWwlHtkjbpxMbv5ILqsMD2F/Ln6jM4Lgpdv0Caa/gASI
	 4hSbRuoXrvx+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53315C433FE
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 13:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166808765433.26294.5276627248202199510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2386bd01aece6ce1269dc69e7035bfe54c1c8ff5185fe315f40db628b3a417f
Date: Thu, 10 Nov 2022 13:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668087654
