Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D9277F0
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 05:17:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xzl5Cvn3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE7ECC433C8
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 05:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696915028;
	bh=RbzKXyPHXN1TR2x1z62lCaakZqmCYzsn9J5GNnTlLa0=;
	h=To:Subject:From:Date:From;
	b=Xzl5Cvn3qRCv3PTuZAUrZhxbyL7KWr+dz4bBf0Oco7Twyu7s/C8TZL/pUD1m9mx2G
	 UbObtqnffVnECnulEugfzthQ/pNQNo4tq/ZxwbbhDaDzyyb1RlAAAwAESCzvJNrYbH
	 3LLrku389+DrGOnOncrf9gVeBV5xlEkC85WSz4x5hn/9egfwYjogIwnnpOYWnDCfZ7
	 GYfUDNiLj/hFKlNSoVY85cuKuPIMDC+T1PZkJBgay5vXbJcKuzHUWlXGNCn2ppBgLz
	 d54/9vM7qw6BsRO77h2dN6ynaFjQX7GLJSP5KqLqwvtnP5pSbw1PH1FHBKUN5PZPuG
	 XYmd9BmTDdlzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0743CD68ED
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 05:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169691502869.22294.682261223754122586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25e19d21eeb8a97338ee41fe9a99383af9cd6517018bc3ab97097e6fd74d17aa
Date: Tue, 10 Oct 2023 05:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696915028
