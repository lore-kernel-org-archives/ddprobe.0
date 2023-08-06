Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 523572581
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 09:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD264C433C7
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 09:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691315588;
	bh=rsHJCztn+kjYgw5SDCDBcnmUzm0lEQ6c1Etw8lZTzBE=;
	h=To:Subject:From:Date:From;
	b=gBDumgS7yLMwTqANLhKfss0YNa/rpDnrxxXjmeHe3MureLLSP2d1qYwf70nrkr7H2
	 cWo+7s2n1WiFTGfNLTo5yDiRcD/kVMRb5c1+XynTOvtOCqc/IPNwrpzWas7Hw6VQrm
	 WF6+8fJa/lHJ/D4HXpOmZsDgnJ2MHpgVaJUBsugbniCIDaYakxsMykLRker7f1z7zD
	 4cz9ot8dsMSwYSZFoPWc8iFWMGW51kPBPxteZ/xFHl18pSDieVssUitEjwtjRQIoy8
	 ajuYJz4neSoE9SbUMDMS+UQLfKedHTpRj6Zj8L2wwuVn66N8lKRmXNf88h1flSk5fM
	 1q6mQkrxWm8lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8505C001DE
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 09:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169131558868.2901.7465775605138893420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db833f1a5c1a73e7bf4bbb13b72b749f7ba996b2d9062af6ad5dcf9d5c84ddfa
Date: Sun, 06 Aug 2023 09:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691315588
