Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 603BB1A261
	for <ddprobe@lists.linux.dev>; Wed, 13 Sep 2023 19:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0FC7C433CC
	for <ddprobe@lists.linux.dev>; Wed, 13 Sep 2023 19:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694633048;
	bh=BLmmLe1aoG/v5PYdw0LqrmR1s1R4JUY9twxdpTcSXR0=;
	h=To:Subject:From:Date:From;
	b=HEaFTBvYwmTFatHTHBuBzK1aC1T0FHlGvngkoCUeEDOVrWpL3M7t0kWswmxJXxFxz
	 +IyPS48fR2MG/3Z6DeBhu6otJsOKrthL0RkUXtvQx+gb3Etwc1G6+kyNqhMUerpOyU
	 EQpIyeCeWATU82dDLrVJ15gQWCfISvCgYOvEbflIHo/f5gBm1Tj0xY6p8KhYWcXx3I
	 B0y5/xe/Uc7GxzI86/X0gWikpFQnq0UuRR0LvxmPCl0uvlzAY8QaROzIDz/sZ+aJGa
	 TL+DpZTEjvoXyjk5v2kQCo1JF/oQRjVjxIT9CeZSUaZkksPSyUGxQucErGj0zQKA/3
	 jZT16BRRFRf9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6F6DEE0211
	for <ddprobe@lists.linux.dev>; Wed, 13 Sep 2023 19:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169463304873.16334.9675750037290120926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01a0c136577e4fab862869023fb3bd097b9c4352d15852a3d0414b19657c1ad9
Date: Wed, 13 Sep 2023 19:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694633048
