Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAAD020E2
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 19:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84D77C433EF
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 19:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671997287;
	bh=w9tOwQ7tazI16v4BzkV/pExVfTKC4h4JTtkK9putd0k=;
	h=To:Subject:From:Date:From;
	b=AcL9vokPonPz/hpcFoqAXWK1x8E46Ij/VgnYs0j31cEMLbQq7m5oC6TF1BYJehaHy
	 7zmeneiYCLP0Hwe4DFyhWhFLPdnnpfTCSaiw7MBEDWKtnA8rizt78ICcu+XuwIlLBT
	 N7ybnG8NUj757w2KxpeA5C38eoT1fGdF2AbFfhFz+RALA6Atfv6Fc9bh6FmI48O3Bm
	 Ej3UC0B09WqUxgWwoZvQPaB0rK7aoLEGSeACcGA0Sg5z4/3Fh2Ax8Q8Tq9fFwvJR2E
	 Ke8AROvUMnhFf1q5M+Ltx1ZyBj5pek8FSLGg6HyYYqwu6qc3H/8ADZeJfeIX3W5Q+H
	 ekO7Z7K1OkCFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68A11C3DA7A
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 19:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167199728742.2887.18439762655350972617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7332ccdc6348586c619024fac587b6656a47a14b0a14c32381ba580f60446bf4
Date: Sun, 25 Dec 2022 19:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671997287
