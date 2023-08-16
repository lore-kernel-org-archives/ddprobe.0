Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48A03174D6
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 16:33:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA76EC433C8
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 16:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692203588;
	bh=aGphT5fKVJLm8H3jSV1TdjIfx6b2xzlaljZC0eCWwI0=;
	h=To:Subject:From:Date:From;
	b=W0mjLcrHOKdZ/FDQkUjtEMAKv6UWedo5FcdfAJN2smU6cZSJQc2OlL5xkV150iv1w
	 My1edP9RhEmGm6RzJvHLjqZ0pb38PachEDLfqScG1otM7Tz3e5fe2taxusxOc+TBNy
	 gqICmxuGNTNtObDNnfBj07Tvj4CavuboIlDWGLrA81t+ZaMcV5YTIs0Ji3OhnnUQWL
	 +aw6+ng+469NFhAMsWUx6A5MDojknCYFrI3CGLzdUhjhbKdYZggfEsb66F0KA7B0lE
	 8tSizewDEwLAquDiI/I+ErykuvcAhH0iv1H2YFcX+cuomtbd1O8FFlAvJUh2Zfi0AC
	 usVzmHOHeE4dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB175C04A6A
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 16:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169220358869.9641.9528241435960137262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 924ea904bdf6f5d23726e57feb4bc6e164db6223f5721ed8ae453fdf9170bbea
Date: Wed, 16 Aug 2023 16:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692203588
