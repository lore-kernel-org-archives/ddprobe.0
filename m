Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F2613C1C
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 19:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E26F4C433D2
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 19:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674414725;
	bh=k9LuJnaKTRcAqt8FEk8dGPnW7zqC30SEGzdXUEdxDGk=;
	h=To:Subject:From:Date:From;
	b=g5uTW0/o7tFd9fDupfzVWJLz6SPylF+BVgNgHQu3fC6wZTScxEpRONY55eFjewqXF
	 iKoMaW/inzCTxpovbSquNPVGvxqxLGD1BUE4luvM7Dno6LBeiAZp7kRO8IEvsse3na
	 7PxM89xNr5A+8R3AVt8Uo6drVghUTdl+T0V8a5zEXvHgLSOgvXLx66Y1KJmZAy6OWt
	 snN4A18bmYdRqR4WVuWeqLWCj6o59XZ+8CTazEC7Kbrwqyfu00XF1VUt7S9PS7k1Y1
	 AKiyJQWgaIQiSpL77an6EzHwhm5uPMMPRVFj992rnagj0cQyr1Pmo2BKnzb3a3yfi4
	 0JeS4QJ8Gv1vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B57B7C38142
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 19:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167441472573.567.369914606276879834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eda867b9651c9dd74cf246dd6c25e37d7174949ad0238b63f75cdc6b76085ffa
Date: Sun, 22 Jan 2023 19:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674414725
