Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D89AF7C
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 12:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 763BBC433D6
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 12:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662640853;
	bh=hQErRBxEikFFYyYD2qyP8QMqVGzilk55sZ/ci8O0TZY=;
	h=To:Subject:From:Date:From;
	b=LNTsi5yn0EvmE1IAdUX/4nPiSMJjVC1qrWhMIwqevmXOHYYb6miYkzCWKmEk4+2nT
	 S2e3MMjR7yORKeOj762dK1RPyqburwZLCcnsrJQNv3sEDluUZyjiikL8oLAIdgNCYI
	 xtbV8AJKyyQHz3/7M4dyj/riWSvjvuPJ0GvYaOzbE6tSr+lKqpCreT+TW4rYnTgEI7
	 Iy5WN8CDQm2ZieFq3zu6+jJksP5bdnVIJlhi4zN6fW0jMmln+p0JOnmWZ2AB61cOcd
	 9gj3vWIkwdJ5hRt/ITdvfZubrr8NwSWUF0C/GHpyxu0aPzxmC6QeHFcz9+pF+XU+uJ
	 uHqSJzAiB3PjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AA9BC38145
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 12:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166264085336.19110.12036488407235876337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa464129bfb8b30dd4147e0f513e2adc1c89578611d255a5d72fab6ecfd78d29
Date: Thu, 08 Sep 2022 12:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662640853
