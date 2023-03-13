Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4138D1365
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 12:37:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D81D8C433D2
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 12:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678711025;
	bh=qtOzrF7ANnhGDYjx25gL5IhwWaWaZrCjGSRyNRqUovM=;
	h=To:Subject:From:Date:From;
	b=c9fjPgbCz6PQcn+ol2aBY8zbsRxb/MW9cxupYSlmnmfgqm6BSyQhbs8tq1fhTxZ2g
	 O7MeHzj+XBh6C4r8/xisQScV/skvKlAy+TP/zLj6J8YeHocvh4XUyX5I8UBBAg3tci
	 9GHznQgGgV2UxtAGDg3Uf5E8iql+g6DF18yuTyQZweQkD+SPU8xl83YqQU/7JR3ZP5
	 GTv8o2A7pQiTd5oTzOMVsM2kE9wJpgZWlMusZGlXM00uSCjnJy4GrXmg2DXRtmgLC9
	 1kJUrlsVaip1nDQK9OJZnvNZKBv/lC+J+wrvrNbOqP3olrXZQYl7Jzd5NV6cdPwHpK
	 hqW1pJG/HKjpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC3AAC61DA4
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 12:37:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167871102576.22417.16793736020317254496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 571bb11d410ee56b7c9228939feac999cf8a4e2f675fbeb513c9c6779a055aa2
Date: Mon, 13 Mar 2023 12:37:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678711025
