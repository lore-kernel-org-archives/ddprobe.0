Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A14C101D3
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 08:12:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA244C433C9
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 08:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690531928;
	bh=V2c3WTTW25v5pFskloP1oDs2e+vzL7HaM2nBdbQm81c=;
	h=To:Subject:From:Date:From;
	b=cirGtznoLUL6wL+c2Zx7Nom9atHYawN7gFvq/k9r7EogEtmPFLP0mzI6/LVI3/APi
	 +q8ZXp1gq60n5umRPwg0s17OHTxg6+rqytoyBYfCw2MahwXKOaDZoeHCcH8irERlo6
	 5sgIHiNkHcbIhMSRfkVSIGDWSUkUGQoFnYlvVRrGRjL45RW9Rs3UqIOMoJFkLoR+UZ
	 WUxNTH+YaB+AA+4lltMq6oitC6YRuxfkpylCwJ/xs6kxBe5ZW4IE16/ds8zE4b7Awt
	 R0TaHJIPvLkd06D411Qbv9urRQN5qbPrC2BegYg2UPE5oGtKEtxc3LLkZy6+8tThe3
	 MJ/FCRoRHLO/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0F62C0015E
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 08:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169053192878.22154.10500428529737709537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97915a70bc7d76898fe312244aecffe93e895132b492a6e6ad743fb3fc406c10
Date: Fri, 28 Jul 2023 08:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690531928
