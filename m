Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7F9E7EC
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 11:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B3B4C433C1
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 11:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668945054;
	bh=wDIAqTf5Q81MHviwkJs3PHzxyVMLkborLZoI6FEpaAg=;
	h=To:Subject:From:Date:From;
	b=aMD8XafR+rkLg34RPPfIRlfP1IbWKdrEnR95Rf1/gghOsbpXaHG9n+9suNfp2Qtyf
	 6oL0qS/fyr1GamkSS0ytERcU6b3sX2qmgBtKsMOZkN3igmkx7thxBIVmDG3WOP4cLh
	 SwlPzARmFfIAzvmSL7SeeIt3M18XTCT/MbDsdr2ZfeT9kKZXXvp0yG2ZJSqLYRDWnD
	 UJz1Fmh6x/ATBY+JvcxEANryYsTfd6U7M940JrsD/PdZKzwcOT4dSgVKBkKPZVucZ7
	 +N0x5IDDRELFF435WDRhfvO/ktw1FsEhOq2VgZoOaAQwYeldXUHfJakjpdA143JWzM
	 6vkKbQzjpjCfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51C13C433FE
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 11:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166894505432.22332.5616853755852815353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb8324691b4d389a9a22e14ada8a11ab5462952169df05162019a30a468c85ab
Date: Sun, 20 Nov 2022 11:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668945054
