Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E39777C
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 10:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87674C433EF
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 10:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672567287;
	bh=CI2p01H0hRf/dvnUjhXcueL25NcsK2k2VevCMqmvUPE=;
	h=To:Subject:From:Date:From;
	b=TlwG8PR/FaUfASLvyr8J/KE4HpJ7rDe5Smgo0lmqtv6xcSQFJOiKtdjIaRPA396/S
	 eZzCT4ljPcHpF+QotWk9PWjmMalgi9zPxyK2dLpYjXbx10fPqQt19oXNzW3aw975I9
	 /m/ZmdNWDQ9Bh+lcjluuVz3IbCS2zoTp9onbcpVD6ufmwvhMw4ikhh5vyjGjIkjiTy
	 mBpXiqVlnQUrtWcyeL2GDfGviTwaKuG8q/DUFL+hC3SJ3ozRtRwQg0Q3z7lT512nVj
	 Zo55OCx5yC/DjtLbv5yrv5+lP2XXFxDGuT+5BcCTrh4fMWmXnY/VXwKnV/VuH0fb/X
	 VFCMs0HLN4Jtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66E42C4167B
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 10:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167256728739.25336.1801679807854735509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c65cd9272bece6994f44aee28bdf4d5d980ead0f1108ea1473070a7312a27491
Date: Sun, 01 Jan 2023 10:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672567287
