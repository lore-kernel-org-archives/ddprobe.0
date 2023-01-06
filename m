Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E45247E3
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 01:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 901E3C433D2
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 01:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672967487;
	bh=4ND8aK8blXIjG3dGrwCisYiyU4Mmn498nzJd2jy2cv0=;
	h=To:Subject:From:Date:From;
	b=HdBPU5Rp4mxxB499JzN15n8CHg3JiNrF/wW97nfmCftbIWv31xG4P6l+H+bymIuy4
	 +TtJh9IrdPtv49zClBAeatPKkCeZTZCDvMb8Vq2kiLIMYp02vUsrT/ALNKyuM7Pulf
	 VbWRcgERBzO3WbiVYWc0V5BPrVyfV/0NPESFFwEIGlfR0TtIOLLuutJC1Gu6roHNak
	 c3xTat+81fDMJ3jkL/W70vkMAiq86o6ryxYolO9bLKO9/U5qNNMo9xx6q59x2Pz9Bi
	 h4gAWmO9W258Ve8iAK4Xl5UFwUJ/nDTRR5GuWH/u15dzs5V9MqbWpqHrBjY5PSVjVc
	 n6EvrpDUlyQ5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72F6BC4708E
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 01:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167296748745.16857.2969709775620998409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d38ff2ad851043ad7c370fd654af005b7189aa43e75a665d7eb4ff8dc13dc6f3
Date: Fri, 06 Jan 2023 01:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672967487
