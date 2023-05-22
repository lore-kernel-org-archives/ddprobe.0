Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E15F14296
	for <ddprobe@lists.linux.dev>; Mon, 22 May 2023 15:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 27592C433EF
	for <ddprobe@lists.linux.dev>; Mon, 22 May 2023 15:13:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684768386;
	bh=dEK6Hsg5BB+j07h55UDTIM9j0OkWISb+hpq9OVSDtK0=;
	h=To:Subject:From:Date:From;
	b=nv+b5eT1ji+/XYDFhfTRZC0EtmgCDInu0JvtqNedHIybq6WncRVyiFT7xcdSfhxxI
	 gLm8nJPocoAZP++GFZCsrSHbO5ovU9ztiTOFEkqXRFkQdbP5mrTiCk45BUeDgRUrNh
	 6eyFLivV7jGMaLBlSHfdb0HlhoUi1WQGVdtuErbkAIfGK6b3QWQfmM3etM1qTIBpkK
	 Dif5n2TjnB6ln0ogDwPHysDCvD0I18xebCLTGbGfgTu6nG8bWmEMSyFtZWqwxf1pEl
	 baOn5duuSByBq7hiaaoQ4ZIkCr25ZaUwwmQZvFJPZO67LzhrQja+VxT8sj7X7dwMf5
	 M3g/HL9BqcZCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 03B32C77B73
	for <ddprobe@lists.linux.dev>; Mon, 22 May 2023 15:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168476838594.4873.17758936259885978778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09c5d7fe39331407e51d04a91467da9b0156db803579efd408e64f5ff20fbdfe
Date: Mon, 22 May 2023 15:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684768385
