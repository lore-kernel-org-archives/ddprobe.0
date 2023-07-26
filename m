Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8437AA93A
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 23:52:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D975AC433C7
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 23:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690415528;
	bh=4jOZlzwN5g5x+9kOk3lZBFyCWTa0qzRsAl+wdVIjdjs=;
	h=To:Subject:From:Date:From;
	b=nMxHJcBPySKEUipUpsfrSlpOcskzhwh0pXFFGQFyiojNt3Ise37fif8GMQvFU/LZG
	 7hTtueK0fIMMqeb94m7fxQeZ/5l1ctbgxsMQyxa3rVoDXXqnit9+nUFcRA5jDW4cw7
	 eQIsjHSbe9rxpoRJEky5W8j9+jwdPaHHkiNejwzNfTpvd3dg7x5jHAvsmYuv2QKaB3
	 uw62oR2JAM4/6LIypv9iTuPMDz2vyiP3oE6fH/U5yKx+ubbylG88PM1qXC9VCwQJ7c
	 +ja4MtBSIf8Y5KeJRDZt7lx/m+pDPMLul14pFyZ7fQYkaviXqnbSnETrfRSiACvWRD
	 L6SLPjEkBNhLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BADEEC001DE
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 23:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169041552872.17247.4338812438911538666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6a67c34a8f4e8391dc0b65c880e81ba5b44ea0b2d454d4d9feeec7c875e9eaf
Date: Wed, 26 Jul 2023 23:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690415528
