Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4BD77EE
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 03:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 704ADC433C1
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 03:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662001253;
	bh=XpICBiUjx+HlQ+JbDKyCd56Hs+4BdoS60pje0ue8xOU=;
	h=To:Subject:From:Date:From;
	b=VMgOe3UdzuQq/hlruT+Dfeyj67gVIoSNvw7Ms9VpPUlerZ3ZeGT6NP7ZRQ1Bblefb
	 hf/hMDHRWiH3yjr9baFCxgkVGhlKWCpiQVvA/J/u416OCodTl72CiaEWNBlKrKyXN1
	 ein3DvSC5fivTSNSg0YB6VjT8ZYyVAxYzl4Hk0SBMsfr4egKjunheUnNPlTDErZMO+
	 UGr8UjCc2YbQXc9VQSDF6u5N817CTDyP5oIeDIxava1jnwqkex85i7RN32OJrf6EQ3
	 ZfQ3kG380VxN+DBv1b1Y3WeV+y1AXnVjsIFgM5KreVWbLe8Gti6IVa8JwQM2q4ONmC
	 d0ah91jIN2YpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D1F1ECAAD4
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 03:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166200125334.12489.13510342370670477679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50e9c5aa7a4eac56568de696aef38a3fd1c3adcb5ff30ce11680994be1be8c40
Date: Thu, 01 Sep 2022 03:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662001253
