Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 701097482
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 19:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E18F2C433C8
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 19:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693423448;
	bh=bBM2a9asC5whWTjNdtQsOHbbUm/0ObvF+3iOPf3IUb4=;
	h=To:Subject:From:Date:From;
	b=VCfJrgrPqIpGWFd8zVSPDKx7LEW45l7c67E0l8SLzuyNL6wGrKjvwF2xDudRo9l4D
	 Pw8kuymbfZHOz7Yj1y+VDIIp4UjS8N6g9wK1R+KoFnFTQ4Pg9mFZI69e6+tLsZZSrr
	 GqXVKl1Tut0YI5yHdOQfRFh/g8ygMYoMcsmaIJgCe1x0T5sSaUUcV7OcObLkmyGN7Z
	 VneQaf+MLf7AAbWPnnsfzGgau5dfRG/66CF+ncDJv0HDfLgIGTJvjdcSQKegnYqFdh
	 tDIIHSN6/jHjushGIMPD1wjcNHnelKfFsE+yss5KJelmErvlWniQAXXRa45fL5sru1
	 HL2FQcfXL+zew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C14A9C83F01
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 19:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169342344877.2747.16235633331361268933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2926803de54cdd188fe91d05b3ed52b6c17acc72c7375feddb5b6d7e76b3264
Date: Wed, 30 Aug 2023 19:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693423448
