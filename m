Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47F5431E831
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785582034; cv=none; b=LGl6GGDDpKdvAH32HzSBMp3RAt9DswDKag72iFspQeD/IpJvpZ7ActB+r1jTZ+NUceHXYoLtH/lLu6VKwEMA0PPqqH2hruW+XoTsJpa9/WdrgskLOITF7uL+0666KA/OHfL1iLOPPICG4M0N/f93mvKODThw3XcxLgNYiB2A9Pk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785582034; c=relaxed/simple;
	bh=228TLQr58XQCjJ0cxbmBMTeJhR6wchG4aEAFSRbm+FI=;
	h=To:Subject:From:Message-Id:Date; b=P77n1mA1Z9DEA/PsaVFkRFhn4KyJKt7PFDRhGom7CskDe6XFadAJsvcajTxCeFxhoJZG/4ZrcwnT7YvB06uaTypdyFEbudiFv6kwdZmM+5wCnLXmiks5G/a7PGaJhyjIlUNOn567Q5JG0kQX9Bsii2kv9NouX31U8N3l43wcPNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V4/yEYEQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V4/yEYEQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1638C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785582033;
	bh=228TLQr58XQCjJ0cxbmBMTeJhR6wchG4aEAFSRbm+FI=;
	h=To:Subject:From:Date:From;
	b=V4/yEYEQOc2I9/8Cq4xOtQb0xcK5p7LOcxiljH9TBwaw61HmFLgAbl9n9RTeUNBYx
	 a2b9fCeEXkESLBf8DxXPGU+vwDrplvSpRTALhIf4xANGbcO/khDqpKUfuKqpngNmLp
	 qN1miwYorbeO8THlWx6ObHgJLEbW1hMeHSeK2s6wqBM1k3DPlIHPCqXKFNdvAto/9X
	 4L8ODpGO0bXx+lhsrzwMC6igaWtjYFXCTOEzfieVFpQkzSrkfcY4ae6i1f5zbYBAyw
	 6c6B1aj2DdO+5CCWBjyjJjZLBCpgzN0CnZNBmz+F1wVp3R6w7nMvZVxK/N2nBqyLOP
	 qsTcosQNSxnmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF93C55173
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178558203368.29628.3961950166449261783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ae34fb816795f92d24173680d21bf98cd9606b1582a5fe5bc0dd346b5fa8386
Date: Sat, 01 Aug 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785582033
