Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C08457E6
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 04:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80142C433F0
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 04:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673670087;
	bh=R4/FGpd8ZFxGJQNnnc7rxtFFMvNLdMf1FtqtNBnwd8o=;
	h=To:Subject:From:Date:From;
	b=d2/d3x+H419mi6YFSYL0hg9mkjCFz9OekMJ7nxQY4hVxkxb8p2hxxQtS8wUT6ywy7
	 lRCe7/IqufpSSk7hAHWqoDST/L8n5VEdEs8V6cVbszThtnqrsfIZXtXsuPgPyVEUrB
	 puBW+H/i9oDfZkx4JlpNR8y5G/1MTjP5ZnGZKj7E7hmrvAVqrzIWdEGKnrYDm/rdax
	 tNmzg0V7BG/diqsUtz7HhC/smr1sg3+dS3F/oZPz7F0pf/JWUBTxKbFcWAW0Yp8X5A
	 d/4LqfpnNPb2lTAMXzJVk4udCOPLGS8SJWkNkpqBh1pyi+8OLrlPaVtbpfCz4hFQwo
	 MlwnlpexmbpRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 669E0C46467
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 04:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167367008741.27316.16083196358005179572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d7c99279fad0d150f390965a96b93f281fb610c555fa1b8bd07958d7b1112b1
Date: Sat, 14 Jan 2023 04:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673670087
