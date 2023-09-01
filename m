Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83E33A92C
	for <ddprobe@lists.linux.dev>; Fri,  1 Sep 2023 09:54:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CED52C433C8
	for <ddprobe@lists.linux.dev>; Fri,  1 Sep 2023 09:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693562049;
	bh=qq5RjPVbAKk9uIAOWaDTE4qnHka0VNh3uzgxjGExvKs=;
	h=To:Subject:From:Date:From;
	b=rFCPGnoyv3QdCnsH6N5Z3coFvQV7KTmCu8k+g1IZ+LTaXvVDS49TpZWtiiua1JsPo
	 eG6R3DQlAu4LbCicZK0S2tEagmZHNXOy3quOnfon7xX40h3xSiqei/NRA01F45YmZr
	 zYrxRBbM2qMO1Ug9zTNrhiKiauMOI9vLNkksJYjlLt6zk+GhjiUyvrpX45UxwQVpk+
	 GdNpZklzoFz2O9rPRaqQ8e/keubzzIAa3cLLnBYfIuFh2OGibAIAWvta3/FanR9A/z
	 nZ5ta+Rzua0nPqcHtzAZzZBWwv2Cs52a1DVag8+Ph+a57VHSrvxXsoAG2fe+fZrvbn
	 uj6MpZAufxrqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2303CA0FE6
	for <ddprobe@lists.linux.dev>; Fri,  1 Sep 2023 09:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169356204872.32117.1825254309160530097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7671ae399603b11b02f9fbd891e29b4a6c1178233d895edfc568d31e4d97a16
Date: Fri, 01 Sep 2023 09:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693562048
