Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 601E54C75
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 10:34:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1895C433C8
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 10:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692786848;
	bh=XVFWnFPXah2a0SCtbk2DS3GYfmnP+7ILOx3MAeFXPyo=;
	h=To:Subject:From:Date:From;
	b=PQ4R01CzI7Sc9P1qmo23jfqCLxqIo44ya6KhUXmq2QGnWpX7w4kqW1OyYnnGfGHS4
	 inz4XP5UQlM2ty6TJJqtZnYUYQgryVbftOyUIZKq41IO6ha3Cor9b6vBlKTGf5SDm/
	 uZ3xwIIW3c+jtPCXuPw9kW5UVLkFD782j69k3fp5AokZ+Vl3mTxKDYMbQC5xGZwEo4
	 7C8/jmFE8ijRIG5XdV8UQBnPPhs/umWrA0pAic0NiORgldamYoeN7yFD93dPgkb/0h
	 KnfNrrPW1hYQRx254qUbLKTilhdFNBAguPxM+XoeRJpbCrDY720/jzXVZ7myZZt50/
	 zP2qcymVKhMlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5E8FEE49A0
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 10:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169278684867.8441.1154321243841560570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1db6f813ab409e02083ac4ea31394e595918d8adcbf263bf5967f9834226c18a
Date: Wed, 23 Aug 2023 10:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692786848
