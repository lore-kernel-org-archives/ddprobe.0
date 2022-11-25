Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF31315B5
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 02:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 763C2C433C1
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 02:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669342254;
	bh=Vfqm3VJBj2QI7Po1vaH5qRCk6S1f9fyZhgrbNCV6bFs=;
	h=To:Subject:From:Date:From;
	b=M2LTCT0WWPwePPBmd8RDm0PdZ0UHQMFViAf+weAkXdBD0z68xAZTPz54hQfGD634o
	 HN+x5ZgTtOa4CvnbrMVRqEpTzPsFpkJ7oRiVWZtgX1EBwZKoEJB9NJQWeO07RMQ365
	 nkX0xu3GgPAZFifnvLNWX9Azcl62qODI3J8CBsWTw59PnE42/TkuVFoE4Gz46iqM5N
	 w/Ju5EpBCiH1Jyze55YFTkQAAxxMt3gmkeQq9DjtIGgZnxbV801J1z99yMtICp/uSh
	 Yr5n0sTSQeh0I4YiRgWdgJwLeql66m0jVq3x75qy4S0F6x1RWskPWhJW2JkUO8P4DB
	 LAMVp5rFsy80Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59DE1C433FE
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 02:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166934225435.4820.4643684523050451074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 827d507cd079528088ba09a0fc77c4cd0b05f54880dcf07c90f1cabed383c5af
Date: Fri, 25 Nov 2022 02:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669342254
