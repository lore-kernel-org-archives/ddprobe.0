Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58CB419BD9
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 23:03:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAB27C433C8
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 23:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687388588;
	bh=1uHr7Bq0UUSr8B7EUNT9+t8hayz3HEGqgjYTAzKq5xQ=;
	h=To:Subject:From:Date:From;
	b=Lm4IJxDIiqN7j4yjnYXunSksD4S1KDB6Zy6coYTUq7GQ6kPS4qbdJ+sP0RVctIjdv
	 vJNFLBZF72MY8crCoEsSFZKBhhyxosSV1gQ5CjGMh1BD74DfTNfAP93PLZ2ivfNjgZ
	 r/xud7eMCebk4w5A80Fmpm5WXz8P5mh4nxQ+Ry7DRh/WlBFd5iB8M5r5ZP06p3OrTz
	 Pr4eWXNw0p9c79yXQg9ui8eTEl76afqJonKhij9Jmw5ZVtY8ln1+P+bkU3JKP2W661
	 mj7kK8knqPn0PTUXN7XXt12LLA2G4S3Qh6xDhIWuOhOMM1zS6IbYF5eTNQoSq3M8G/
	 HinzhBCY1WJUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA81FEB64D7
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 23:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168738858869.9102.4575906721157437901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4bc2f816acd9276619e6fb0e9cd17b52044ea42b216e09d5161ab61163b6929
Date: Wed, 21 Jun 2023 23:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687388588
