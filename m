Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B9A77C
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 04:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2F330C433D2
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 04:27:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680582426;
	bh=ElCW8F695adtzUvh0mV+0asxzUKiDb+kSS+1oIuDRhQ=;
	h=To:Subject:From:Date:From;
	b=nsKrQnxu6TlXJ8JRfgxc08ByrWOLmLS1F6OBz3cBQikl1Wj3GYuhKfBCJ4lxzMciE
	 PA7+Rd6xc+TVO1xbg0VZCnUbFxL2PrfP+tmoXwJ6+V06H4Z4aV7fuwUnVKwY/WhiBC
	 bBdznzA1+JDQSw/8yPlTaNNjjHanMoBM8iqumjAqvyGNRs6r3YfrjcbrK7iM+MH3bJ
	 G4m7QT+LEeYSfi1lkSFeSwviASlY1DB1Mum4s+4If+p8idDEb9P+V88uHFbXFI2MHF
	 F3/DpPezcuG0Zpzj7LM58W+9lNWb0lj2frZL1+IB0r8XO3BsKrpytgfdoXVBk2s4sb
	 xSDMblg0ByQpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EA54DC6FD1D
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 04:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168058242590.15212.520541782425614747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b151fd1b80e4c43fee327425e4c882c2604ddc5eaaf2aa431962bae84c1001f
Date: Tue, 04 Apr 2023 04:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680582425
