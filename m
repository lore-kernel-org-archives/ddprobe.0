Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AFC912B92
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 18:54:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF9FCC433D2
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 18:54:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686250445;
	bh=HLdvTZbOMOLZK1dqtexFZEx6hJzsaVW4OfmKw7vINa8=;
	h=To:Subject:From:Date:From;
	b=QpJTyOFyALXswBO0LbkQus2ZdfWgBORTheS50YhJjp3OgyhPe/zV+UY1eJRlYOuHk
	 9Ey9r3DvlsZ35Ab8sn8o7qO3y5k4ieT9Aes1nHGCyC6ibSRX6eWWiZb707yd3eBxxh
	 Y1JojMi9cN0F1CoKOWP1IEr28eGZLQdIONi2nvFpqCei21TH69Fa7fTp9IxCMH0eXu
	 cR1M76CySfJacQTZ7ptoOzIJIT1qjiwhQXXxIVy0FGZIJmzc0SwoABOS1aa9sUz6GE
	 iFw2tax2zkvNlus+af31lYgX4SbcPdqTRt78yu3VeMNpwDCeCz62QHCxdNbDPTemVp
	 Aqbu5brTfm1Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEDB3C7EE25
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 18:54:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168625044575.24242.1357600013089090589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 106cb25c251973c789049dcff513e08c33806660f89be8c238618c1b298f7836
Date: Thu, 08 Jun 2023 18:54:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686250445
