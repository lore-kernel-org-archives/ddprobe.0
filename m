Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC92617E9
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 16:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D66BC433C1
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 16:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664815853;
	bh=qd4XHUXvUd6qzqllKcspPCRP/riKCvexmh4gfw50ccA=;
	h=To:Subject:From:Date:From;
	b=n0dphHKh/OczDNZ+Xhk8uvS0jgVYKy1U9qxw84yNe8sChqH9rC7SO+Uh1dMLfTYMv
	 cpS/aNvjOsGQrfTYfYnVZcHlVTrascKWns+Syp6psF2REcajhLoye5WT+JH82bY2jh
	 qrS05Mcya1RbNFwzShhPJ1MD0p6UlnOb/TNldI62JYRXhXYYMCgEyo1rJIV4y9M2vy
	 jJ6bWoesn1wGaNYS4X9XISyIrlx7fcxzj3itdKWYeNK+yQq6I8gPGHI/K+17PGh+rW
	 p5QKV1fFIUAx3fP4NRywnMQ+H4Ki1W/OHSPyVelY7eWADJe+nn3jv6DLwJhvYNU4T5
	 O1AuECq+QD4xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 560E1C433F5
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 16:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166481585334.20334.14490758501545719338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15712233daedf72f8ee578124942cf682d272288d848ed348063441309560536
Date: Mon, 03 Oct 2022 16:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664815853
