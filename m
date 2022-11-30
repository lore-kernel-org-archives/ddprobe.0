Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C02D5EBE
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 10:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70E2BC433D6
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 10:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669805454;
	bh=fQPKT0NdusSkKX8FxmgDpOhRh8822RfVxNF/+k7d/8c=;
	h=To:Subject:From:Date:From;
	b=o+EUoaEOxLEpBCapwLvsDALzavGSy9XY4UwCZ21MCHOaziRLLYEUkKaFvsWAadvUe
	 Pf2Q7VY9pMrEGzwceqQ7aPzX1MsbeaZajVOdUPeW71z9BRDcI3cS3y3jfObm04WCmm
	 uzBYU3sTFi4MLCdz3NrufXI9t9vRwTd3l/BSmmZALY4TjwaNo41uN17kVsoyUcgBWP
	 T6nFzU+xDNIZcEP28/MeNcsSBlGXgJ5E7zhLb/1lw7G8hfnt9lj6jcVmBfnbRrJwY6
	 KX0a2uchPl8X5S7zJH3qQhqLolv+47ueRb4LwFnOE74OCVyEW+g0nehuwrYjDH/qLJ
	 a8nsH/gmJLGYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50B69C352A1
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 10:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166980545432.2549.1892360278005432815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36b7b71a5c0ab1ed8ac4db460d5b2e5d4ec8b21040329641a96ca582840a68a8
Date: Wed, 30 Nov 2022 10:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669805454
