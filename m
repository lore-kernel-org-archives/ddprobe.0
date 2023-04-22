Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 365AD7F
	for <ddprobe@lists.linux.dev>; Sat, 22 Apr 2023 13:31:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC580C433EF
	for <ddprobe@lists.linux.dev>; Sat, 22 Apr 2023 13:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682170265;
	bh=7k0zDv2IMNVihbRtDSihE8I2x1dEBb8cfFobiJ7q9TE=;
	h=To:Subject:From:Date:From;
	b=ACbDDOwy1yMG5YTKdIfmXDxTbsXAYtnBtsaowrPUnPkqI+7DbDq2Nfc9/egCcaBXL
	 WI7brbNwtvV+5JNavlayPCOufW7+dnkAIJXdENyLscc+H8nFiXoEqgfa3/ACTkDRzx
	 OGca1L92KdQnRcHrrVM2I0fwKAFBoqKsosjQ0PZ7Y+vZScYc1/tbV8fj3Pw5clMZrv
	 SNq2s3cjWIdOv5JsioKLyvfzTmqMCsSh4r0lKeWVldEraLUed61y5sg4QDrdU/d1cE
	 l8RHeGSUD42xzoAbrnT2Ezoss7iy8Lq54DUARuPu5sEz7HGppzXjeCLMfgtQcDYf7J
	 FydsYxRZbWbZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF7D1C6FD18
	for <ddprobe@lists.linux.dev>; Sat, 22 Apr 2023 13:31:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168217026575.20879.973506086019108793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a970174f05d5706d51f0082f7952f24286220cfe4e025146a075d2e605a7138
Date: Sat, 22 Apr 2023 13:31:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682170265
