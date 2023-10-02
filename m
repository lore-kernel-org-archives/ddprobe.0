Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7156F1F182
	for <ddprobe@lists.linux.dev>; Mon,  2 Oct 2023 19:26:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8DCBC433C8
	for <ddprobe@lists.linux.dev>; Mon,  2 Oct 2023 19:26:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696274768;
	bh=7lRHqFpHI947eO7+g4oes4UsWiNxe3JdjH6jOlwhiP0=;
	h=To:Subject:From:Date:From;
	b=FrrSQMztWhBDFlu7T4UhvPu7+N4K+G52FrMA2gkPQNhBw9ukZ7CsIn0dW/OBlDQvd
	 Sjpm44HPG5ET3NRno4SRnPfRfMKfINycWerWwn6clHPdsiU5gDtiZAStmzqObHK83W
	 thnZC3t4SGVk6EUHOUIbCk5ktQykjgmSN8eiaqXUr5ENuoxubmsVhTMoyw045Pv/h6
	 mngnrUJN0vEllP6qRA9BwfWvfk0TXL06VKzE6KQiyYWz/f+aCTwqd3LXXm0ryBm/2G
	 22e3AsjBGKyXIzRW+A2zmf5wKqGOIcvHywGtlJko/7NcV9fVcHADTM/5ZG329jB9CD
	 ovcAiSiHQjA1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7C21E74914
	for <ddprobe@lists.linux.dev>; Mon,  2 Oct 2023 19:26:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169627476874.16249.4771007448110621357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8db6ee600843c971b5eab06017a775306deefe3e1ddd632af6fccb2e8a51a7bc
Date: Mon, 02 Oct 2023 19:26:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696274768
