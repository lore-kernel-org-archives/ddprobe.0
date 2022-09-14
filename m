Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5C183FF9
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 16:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A1F0C433D6
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 16:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663173653;
	bh=N6X+QFWN0Ijk8guNpZbKt6j46y0Ogh+4QplAsSBlSEU=;
	h=To:Subject:From:Date:From;
	b=Rkbv/D82WpiAEfzEJ0dHnjN3eEwIanb4B1B0pby3EQWLkUPXsyFEWRz4G4MRtN7gC
	 6b2smHK/5LZ41YUByGYOtXfB7g9zSZzlTLgSzwq8wMZNTeSJuEV2fQJPe5Z1LdU1VQ
	 upNFmlAcYFJJWUyXmdlETm6L/jUz/ybbVe/HZBkTT6BZtrYF3wOVhERciG9Kr/HuW1
	 FKoTJvpTH5XQ6GtCwUxoIQUFg5odKfVbgslJEgdmJF4GAPwyrVZeO82xyTY05Z5pqW
	 /fesB0HC/RPb52dok4pI6f9fQndbmMItmbrIWacdwLp5QqYSVJzVLspK9b0leHchvk
	 QNp9BeQTrMp1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FC64C6FA82
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 16:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166317365331.28520.16690638518360714117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87df45e00fcf9121e474fd3f14ad06f71e55975694c77fd2167514d048fdcdfb
Date: Wed, 14 Sep 2022 16:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663173653
