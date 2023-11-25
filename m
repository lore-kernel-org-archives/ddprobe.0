Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 221E0A50
	for <ddprobe@lists.linux.dev>; Sat, 25 Nov 2023 02:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IPjstpBZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C320C433C7
	for <ddprobe@lists.linux.dev>; Sat, 25 Nov 2023 02:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700881096;
	bh=001ke77l3rbQMDJwCqVoPA2+Bb0yDWsfxZT2uPdVk+c=;
	h=To:Subject:From:Date:From;
	b=IPjstpBZXJqrY1hZCrCi+qOOsHSzO58O2g6I4TTkoNF1VSCgUm6DxuZ25iSK2bJxR
	 OOcCXYHbJgFI7PrA++SfJycSAK+B6VR9mn3ngQzJ3nWuaB103cmaDGrEkXh/gnqIrS
	 K4f5VeYfmgkjhs/nIhL31CIDx8aEBHSzGpvbv7ttqBS79CMwLic1Ot1+2Uwk4ffwJI
	 ktv206UjpsFuYePilLd65SRzqYX8JE+qrWK5BhhijP77BFT8z1MIU8FNwVHKTaXQ6/
	 5oiZlfNEtgQ0geu1yRsJoaPRRj0Nf0rhHRKMzsqljQoUFK4fS7gLZqbS7XgW31rMwc
	 CyI89W2FYzAEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A345C61DF4
	for <ddprobe@lists.linux.dev>; Sat, 25 Nov 2023 02:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170088109642.4290.10955647339204897459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d2ce5f8114c8cc192904ca04dff65131bbd8e9904622456decfc41095b656ae
Date: Sat, 25 Nov 2023 02:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700881096
