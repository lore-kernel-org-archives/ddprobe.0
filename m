Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 474DBC8FE
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 11:21:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAF5DC433C8
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 11:21:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687173668;
	bh=YkOddjBAVvsoGwsjSmUfmXqwgXvZa2sXl8mGC1xalFw=;
	h=To:Subject:From:Date:From;
	b=M6tFH3XFQYS/guSGNw247tN5t6TZ1r23eCFmjx1MDbgiY7vYEadIpNyfeSTrtNS8n
	 /5QRIw+Zp/W4A9O6WOtz8SA5mWTlMszOAdpCF2FiLjIuXIK6vOg3ElfkV4MpfZT/Qo
	 iown0VYER6Dnyek242hkvHmSJ4MWPGjfWUn9SKUh4vTDHN1HO2Y63vj0qbkkEAdc4w
	 +vfAibbVKvbkIc2pXae1osvuQrvFXbsov+kppzH3aJSvLtKKtv85i+HkoOGBkQYx4b
	 eeZ9W9GhWIrx6hF5kBi9EByqqEqIf0s+IKoGzpvjdcnp3rPHlC9pw0vP9R3sX2R0l0
	 qnbvq4SChCsTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4886EB64D9
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 11:21:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168717366866.29932.3455085698471293352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6678ead8d1c153f0edfe9f7074563a946b97859e389bc257d2d081aa93f70d9
Date: Mon, 19 Jun 2023 11:21:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687173668
