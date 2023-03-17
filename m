Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 398E67F1
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 07:41:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0233C433D2
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 07:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679038865;
	bh=dwjBqQpMS06B5Zxm3V1Sb9pTxjJ90S/imiwMbTw8Gbw=;
	h=To:Subject:From:Date:From;
	b=CA+uZ1/apdHeknRiyAA73ld/KVW5R1Gd8EGYzIW4AxnsDcamiguUCT+QEBQfPBBvu
	 iVPKaBYAs6JpQoMPBXlF5e2+obugaWszzoaLf8Q0vxWGLpGmjhCqd3YSTQ/2w5l52L
	 h7lhPOIvQO+GYTaGZYcr6mqSg89529j5Rwqr+0anTh8WM4R/08MXA4k4BY4qGpG5en
	 ooHPrtGnWtWbNL6kTnrkyMlNmOF01a0kQ3UvL3IU3RH4FseN20K5BCrnD3xjPGHpNe
	 TbQlXj1yqQnJad1/k5WRzDJ9G6XtZ0qkSQ5g/wsac3kRYauDeXd7D+A/8jO4mfm9xc
	 kvhXrDVmNGtdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C02CDC74A5B
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 07:41:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167903886577.19031.14643519210265630179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31572459d9a4e3999de02051e497684ef45d9f706c38afe1a57416e562de633c
Date: Fri, 17 Mar 2023 07:41:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679038865
