Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59082654
	for <ddprobe@lists.linux.dev>; Sun, 24 Sep 2023 04:15:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCF35C433C7
	for <ddprobe@lists.linux.dev>; Sun, 24 Sep 2023 04:15:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695528908;
	bh=+Xobmq9C9vuKewKog+qzkpNpDVRjCCglGqeHp90piUg=;
	h=To:Subject:From:Date:From;
	b=pU5GBjaZBCKWlsoreWqFr4fOqbxihza7jTKYvrEJyX+diMjsc5AZW38T9vaSojocW
	 KEz26lGft7oPowJFxxhAhUgBCtzuv1n1YfGGUNTl12Ay8D4ES5Gwj0hz6ujQ6zPeu3
	 2wrsuNQvSlnGQ496kQuI6aWOepnefqEt+OB6O09xvte45tX1tLzlwmSmhYAfRucS4B
	 Ku66iwjgEIIp4Ub8xgYSHwcvcS/8aZCaosD2EGlYs/NZpHcvnCS4rDh31q0klC8H1b
	 Ta5QrpV0ZUqiGhKfccbxP8R8Ka57vvaDkHfQrcJ49fzVFTNHKh8L3d9WcIHMIATCAv
	 8rQSswWAEdWqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B01EDCE7A8A
	for <ddprobe@lists.linux.dev>; Sun, 24 Sep 2023 04:15:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169552890868.15131.9988950277111884566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb5f11234e9dcd3ec136da9afcb7355455d617e859c15898440afc1c6e30542b
Date: Sun, 24 Sep 2023 04:15:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695528908
