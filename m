Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53AB15221
	for <ddprobe@lists.linux.dev>; Tue, 25 Jul 2023 06:02:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2962C433C8
	for <ddprobe@lists.linux.dev>; Tue, 25 Jul 2023 06:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690264928;
	bh=RYYq1RM+PEvMdSDjYnQeKHLmarqR3qrhC6ABAxywKBk=;
	h=To:Subject:From:Date:From;
	b=JA8/hPdVKakb4pqpXwf01Ebg1ThEHyGQdpA10DoL2RA24rFjtTlQHvxZP+qJqDZXU
	 10Ot7P+cxPQw9QIQYjbHTEZFmO84gJrmnFfw54E1Hz+bmWmoJm/QqGUBsqgz6hxP/B
	 Ts1d4WEAKNH/pHw1HMRq2qJ7gsOOlchf/S6dO5Ri2tazKIciXb7UHMQiTOmY3xdHtp
	 Q1CFZT+nXdtmmluslg0YQ4PBJvwPpey9MzRusPggElXIyGiaDEDWUc74jkf7VJq3tZ
	 AtyMeBKHMKZPzE8R5qvCTSN0udMFa7BZ1ht0XDL7znryxGKcom6wGU4cFIsH7OBfaY
	 rYuYrSINai1Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB77EEB64DD
	for <ddprobe@lists.linux.dev>; Tue, 25 Jul 2023 06:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169026492869.21538.5870200679809963953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c8092c93d04bfc0cfa89b0666ae8c1aac0575407d2e2c0f339f103091f8441e
Date: Tue, 25 Jul 2023 06:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690264928
