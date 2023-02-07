Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F61128E7
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 12:48:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFA2AC433D2
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 12:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675774085;
	bh=px8N0Y0VJI5+3nB5vwwZYtk6pmikibgw/c71FByCvu8=;
	h=To:Subject:From:Date:From;
	b=bT3b3hOwjHGaZP+Cix/oV/jB1wBcCcZWfnDSWo8vLXaFsxS0negHh3FSi2NwmRtfQ
	 JhLSTW0ucikX+ZQnWAHq3SDxH1xU2KiYFqt9GsAUe213H/VKCZSIgVKhyZnDc+ITtq
	 S4/OCDYXdT5tHO45Qtqp8qmBFQcCm6eQTQ2GgtdhAfrqK+BiBLwoMD8OjSCKpo7kav
	 FXxnp3I3Zx7g7kP6fYYvqjmbcUmNLv7PJlaXX5A6Igdu0HrrA7emu6PgJf5NktvzxR
	 Mj93TuqJ/Pl39InJS4ty6P5RZDveESuzwzr/RG/e1M+elE1BJbmfvFbJCnyAFFXaJK
	 xT8gQIYVJLmDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA3D9C636CC
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 12:48:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167577408575.444.2988935436479780618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c139967b8585254264400c6c47966e9522199d460ff771cf20a143ab8dac4527
Date: Tue, 07 Feb 2023 12:48:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675774085
