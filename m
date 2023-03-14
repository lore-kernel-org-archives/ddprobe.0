Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E6972565
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 07:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F4191C433D2
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 07:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678779486;
	bh=OHPLZs3mbh+6bhhE7zTzKrvGOAYEpGAdJcNzNtap+2A=;
	h=To:Subject:From:Date:From;
	b=U4JxqVNPkATjSW7FYOwkxE3MQsWwQrXwCg5AGG2iuJPbIf5c+tDDCOD9uQw01bFBq
	 Yyl0r2vLW2cOTFGse9rO/ih24b4txmy8tbqwIuF2an7hFoLrYdERsW7mE0oP83c3Ny
	 g6hCvDbqNxHw6jYRv7NMdAN+QJLBV/D85s8VKPaN8gnfof3G0uZdumizVYhdMv/d/f
	 VjE3YNpxY7fzqMflrxTA9msgAgQqF1hmIBhOm8I1MVgQUGEsX1oI+3htGwISDp73kX
	 moASXFfBpJcCIVFlEzMY3rWznd+ttiyyaQa5PE7A9RK1gtahzFNs2WUQMJ5S8vBJWW
	 3RHkuqkw4S2SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3AE7C6FD1C
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 07:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167877948585.23062.9907286123862582769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd69fc621c7eed4085f5489a1038ffffa289ef42b000fd3d7e39a60d8c9a3787
Date: Tue, 14 Mar 2023 07:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678779485
