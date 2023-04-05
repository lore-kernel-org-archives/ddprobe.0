Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4928863AE
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 15:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB913C4339C
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 15:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680707826;
	bh=6KTK3wXm9b4w1fl1yiaQ5dMr2g2BnovRIZkckBRu8MQ=;
	h=To:Subject:From:Date:From;
	b=BNqOAa8pVu/JPdwtzCkEeCvKe+SRLKayb0iJAF7lVrNb8TNa4Y12KEY1zsBFWOTtx
	 J7QvsReWSzl9ximrwSgtMEiPY9b34N1JZobf9WQ8X0i7WCcnaqVxBE2rZn0/jeVFEl
	 /pHFzfQmvLA0N5/wWHtrCIaemmqsSJJzqrr3bhxEnVi6jSIKyOd+BbL7Ip9uSTVuDd
	 VnYaf4YqMfQR0YnKwy2EHVM7CEPdYlG81rIaaLg783Ioez4IBTZz4MpBSvbyKQDJFZ
	 6cybuG07xhwkBziEwO1Zjf5RGfHhtJYwcQ4MOOc3pErcgUkToOjBdNfQS7oD8MzT/g
	 AnnYBJBeA7fxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF75BC7619A
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 15:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168070782582.6721.15780984384744202956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c411592f59639bdcec07cb05847935b7224bcc7ebe3cbcefb48a0c7232bfcbf
Date: Wed, 05 Apr 2023 15:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680707825
