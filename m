Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D41C01859
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 21:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 890C8C433EF
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 21:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673212887;
	bh=/2VYi/rilGnpUGb6oI2s+q5mLCKpOHPZsi1WXp8Qn1I=;
	h=To:Subject:From:Date:From;
	b=pK2QRhRkDsu+Ya8GrRSWWAMK7wjI9OqjCYLJnSyRPZQdqYHs+dlCD9Y68XOSYJIfY
	 6Xzdip0ZNgaFVD4kYW9PvzKDv/a5akd2wc8LnUlE2yfiyML/aQRJV5d9KaN/53qyRv
	 lVyGReYSaABev2nTj7+WkIYRfUqdZ+OA3WH0m8gcky0uZ/fnYxIqOKnSuC+petr0ic
	 WhOm/5jrkdLKEDs2uxiFbDIKvZaxq0+VEQ69KfEPWs3acyk2VAaLE+DYMD+zuNH25D
	 Mq2OIW2k5Be/bciN21HZdhmE9cI/esB70GunNUsGHC6fNKlkVsjw6MzxsjORf1Ib9y
	 80a8DQk88Cliw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6998CC54EBE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 21:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167321288742.23275.1718332236369759721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dba15ec7be97607900b68a0b28c0ccce4b1f942209dfd233910711b5aa4c2215
Date: Sun, 08 Jan 2023 21:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673212887
