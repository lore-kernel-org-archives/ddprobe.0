Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D705D46B3
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 22:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 844B1C433D2
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 22:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670798487;
	bh=yWyRE5pEh2OVS4+/3Zo4MevRI3hZnZ5GDD+XbKi4j5s=;
	h=To:Subject:From:Date:From;
	b=oVAgf/KYROdnfuGkqkVNnG5gTpceWmwIalCeLqU05VeN5KL3zMG0sdh6mnNthVaMl
	 dDIwqSaPZb3vpKgaq/r63Z7ZQsCZofL2qGiRU2RgQ+n3jG+LABqtpZNSK+6w+qFmLp
	 NONCkjYTYRMsFLTaLj4IU0ApUcDBDphvwGtm5736AvYKH63hzUO7kq492Spg2LVvKV
	 ZgW9V5gNJTp9yYo6l/2At8nyscqKeaRkBW2ORHY321LcBH0KA76HFeZ5yECHgSOkwD
	 /I/2UYpeRm8/Nm3JKCNFAKzuQpoDPaAoWiBvaxio+arjKwhEk/3Zcq8p2/DKboyDZC
	 fwGDrCJ+nM13Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 698E6C4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 22:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167079848742.32658.16681422915401411267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 413d44ca46c6d7cce0e74f4362cfe8af99404cfccd2b0e49b99124887b54ffac
Date: Sun, 11 Dec 2022 22:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670798487
