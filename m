Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF9AB186A
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 09:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 737EBC433D7
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 09:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666864254;
	bh=WwGMnZCL/Ba3eK860zQyXv7NvMeoerRIGN88NgaQtLw=;
	h=To:Subject:From:Date:From;
	b=RAsZI9e6B45MbjIp8zUL39nVvZtXCLMYY+U9OgAlzUIUNTpHwzkAVDlYpjuzvRtyQ
	 n0/j3q7mIibUivrUCD2/K6SHvwbqcoks9U7vXAfe4hKUXKp4cnmVdOlFdPVdPpzBrm
	 9uHdM1oiXCJEP6daf+LOxvXEdTugsirww/DptUQPwnr09Ak9eJmJKz6+suNJz7kG2M
	 Jz6TnZ/sa/rO6Rcq4c7PtPGajUh/vqB4nJ88nelAAHe4WrD20RXl8brfUjXfNIheXu
	 ++tX/a11lfcgFP7Q07WviVXLqoXg7bDDDywfOSinEhXvDMkqrAhFZ8xRK3Zg8Jk4fd
	 k+Y+/bemfEr6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 584AFC38A2D
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 09:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166686425435.20389.5384221984120498226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 038e087b26afad871f17f9125fa1576df9068a06b221bb178543e7e82e79fd6c
Date: Thu, 27 Oct 2022 09:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666864254
