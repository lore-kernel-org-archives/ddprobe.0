Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA84B625
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 08:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FA85C433C1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 08:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661849453;
	bh=U3orwAD1pzS2nxEzUO1ozfdON50TsYaQZebKz6z0CHM=;
	h=To:Subject:From:Date:From;
	b=mvLt0nFhYKCsx8B06w4a+O1jzAckpnukt7QRtcXbqCrX2DswT6UFZWcHrUtVGIVAq
	 uyQJCcWS3+H/EtTnyA5MfeC7c4ecZjweK+kzCETphsxPDZ9IdcUDnurvmwlRSxB0o9
	 Q08c8NL5J8aog8tQmUbLfGoi1U/D0YOZhHTBaGxvRefGz3mqRzQihhOnaJaLtaYeLw
	 vgY0IbAWCMkdMKlOZmw5FIj6Ey9sQ2Z12ZQdnUrrn6VGvhPAkxRUqTFK93ZGZqXU+I
	 xexrVq9GonFHbc7XKn4uUY5eKiYYqvclzXdzTHd6PR+xvx/W5y75dEAR9kPEo83tDp
	 vQKE6X4A0HWgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6849BC0502A
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 08:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166184945340.32131.13239049979982760593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e2e70f4ca95028e4e37b6d133af7dd50080f3a665117b13dd96e079761ad641
Date: Tue, 30 Aug 2022 08:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661849453
