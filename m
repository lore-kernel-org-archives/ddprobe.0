Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DAF8200AD
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 20:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1FADC433D2
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 20:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685478185;
	bh=JiZoMLrWUEjSyowSS0NlXUq1pVrohY8o99prA35+RIo=;
	h=To:Subject:From:Date:From;
	b=QnLPxwlccrgrHEPBJ68tXWDoZsoAhb2KMIK4yMe5cQl+4nmytbfZTnn1gPKvl7T5r
	 dyCHV5DuCdtNTKkpfhNqfjqjZTvSrPOJQ/Z1YenTh3gwo3Gg92BS++lhrr69Krc73N
	 nZeugDnaRxA5HY8NlsWTE4tYsFzYLdlk0YrN8yn3KfTeU/u08WllxpxotBcqY7vURG
	 dLwA9Tt7fUCRMLbungpqOSBNYdnoJcUFsB2yEKUBZvevEBnm1qQ4FzYh3ZfTChJ0qr
	 O0DysGx97INRSsYYGpvdMHgNzgSeIfpt/W/UXEcPU0pV/OvH1bODE6UuVhzQccLEyr
	 JN/u/DhJFxEhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA932C77B7A
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 20:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168547818575.5499.11300704034183490350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 604b398b8ab1e34f769e2888fa51b0905fc807b83d09c98d2cac3336d5684377
Date: Tue, 30 May 2023 20:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685478185
