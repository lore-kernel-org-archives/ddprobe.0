Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCF434A24
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 12:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DCBDC433D6
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 12:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666094453;
	bh=CaGPDhy79UnFfFFsuf9ZolQlkZyzIib85Bn8uOY2raI=;
	h=To:Subject:From:Date:From;
	b=jr1XDSuSiA8nV9iLmrkzf6LBHLXoS+1q12c2SJJvpvABPGBcVkqgz0ShUZuc476DM
	 9lKQ6Wt3Br1CW/YYvnjta4wOfmQwCmnJZgVFqeUdIBxBDai3wsRu+Spi0ADFsGBfEX
	 fOpJFVKtXy9HF4p/ivmuoYtTJwb/QOERCmKsmxKn7KgN54Ttd/ByDIPkT4QEZGiqB2
	 LnCuSNtAyRrZohditFAViouiWatmAQv5czHXpouvubykPVqlL9HZfqv8MuAO3f7Pd+
	 koSwcNUzCOmaloxgrGxIKrcXJDAfyhTcJHmhx56mw5U68bev3G9F9Ax0tf+t3aPYXi
	 ED0S6rHi9U6rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56288C433FE
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 12:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166609445334.12544.16293334882644469507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18b9bf41b20e549991c984fa553190d754cb5b9859284eab4cfbfc6ce6178982
Date: Tue, 18 Oct 2022 12:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666094453
