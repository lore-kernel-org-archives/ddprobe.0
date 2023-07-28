Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E3C2EDC
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 19:22:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCC28C433C8
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 19:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690572128;
	bh=GAZtl7dWbIoEk1D7cEkljSmSyUKnQJyvcpSaLI6p4Tg=;
	h=To:Subject:From:Date:From;
	b=G6D3/h/GfD68pVJWHHT+vnJfLblWusQpG09kjH5KApg4GaJ4NirmdzAjGfeV/P/tK
	 b1qqRhvbKODsx373DFLYDn/Ky95kaVklJl8ZP7+3R2Y6f/uypZ0ke+ILoBuVHnSYsC
	 plrGicP0Ma2+utKpVtelV+h1ITEwl7F7Bl/EVPgg16A6arfzTjk1ulCRoW0iGMAPRe
	 xSf+fCqXkdASG6qqaAUe/Tct5oybfhVkz8gCwcxLHO33PI0E3oJYbxJvGMcOqikxPk
	 A/1OzJhIdRWWRmeeAfSpz5lXHZLCEt+fk4mNAquC9UKDytFmONha9dcja/iY28GxiS
	 rEAXn24j8FgeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B136AC0015E
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 19:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169057212871.3766.6144064337116804036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2d01b267dbe9215a133a7e23f26ca0116a96c1a1afa0be7048a7c24c6a40e04
Date: Fri, 28 Jul 2023 19:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690572128
