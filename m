Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C2291FB8
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 13:11:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DECD2C433EF
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 13:11:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681045865;
	bh=SZLU+CjNYUBIkk+sp26+QFnGSc1H1LOeoP/liMp8Rxw=;
	h=To:Subject:From:Date:From;
	b=MzMPHhg0s/gMWO0a3ev6T0JeHHmqv2BVA1eSz10AJhJE/yuxb1XLevOVRm36CQaqm
	 KvvumWm5/Iwl0c2OJuRePHbDdSmMEK0NEv6oIWMq20gMe1lJTDhgD+g2aFXHaIPwvh
	 TY7lrJ1tW+UMIVyJVhJMuUmXQYUFYB6EWxl1NwpQBATAO7pZtFfGFqpl/NUKVnKoqj
	 EFQ2vRZ1cGS6NrjXPiH8Culu9Yus8crAAF8fbiqHSW0Oj9Gg02CHwie/Q6MQgE0lXy
	 3pAOBTnaxUilHbmcNaYr+pu3X1d0V7AF26+upKaSGG96Dl1x5kg6F019pKlAx2l8rY
	 aEbq8ztfTMwag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C70B6C77B70
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 13:11:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168104586580.15482.9904203062171799565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e9a16553cbdfe807a3cf07a09beed87144fb2f360519b021c9ed226315c7d62
Date: Sun, 09 Apr 2023 13:11:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681045865
