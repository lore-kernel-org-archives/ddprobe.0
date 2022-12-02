Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B497D4C64
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 15:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A2CDC433C1
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 15:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669993854;
	bh=Wjzh5vV/qqf3PpKn77LGmSmheZq8oFAMHjENbAM2dRw=;
	h=To:Subject:From:Date:From;
	b=mxvNanuzqNMdDd00z5hp/TzYFnQWoQRsWHlreoimaCoBwh8mhKkqp0opLAh2/4jDw
	 wFThWUrEMNC5HKQO9VkaAlug3X40aaE/WJRvCunsj9zyCglTQnDT9x2Qt3Yix0RVN6
	 EJnczOdoXjsSDhmAV6KHsSL6HaEe9OAHxe4j+hcVdiduiQLqpwG7DeLtcjDgDrRdjz
	 kdZGN5V5Cl3eafzzc8pQGHVRtxhmtNISsD58L8682Y7LDDJ5WVw8ChkYDY6e7tBEBT
	 a+toUxh2P9AbxiYgWbqfUq6kske4HM2ndL6K9NFXDRYHsHDvzSzfPlIKjplYdJUbyz
	 UB/M7PYx4UO9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E798C4321E
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 15:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166999385431.451.7491662903449610321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3692c7472dd727abef0abcee44e11308d5eb27187658ee307de758b44a3ee0f4
Date: Fri, 02 Dec 2022 15:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669993854
