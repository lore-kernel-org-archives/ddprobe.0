Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF7D7816
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 07:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AE95C433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 07:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670572287;
	bh=BQKFhstXV+O8dwwnxpySCLwohWeWeoad0LYNVSBVWJE=;
	h=To:Subject:From:Date:From;
	b=k3vPtjw183mtEcVUftGEN+JfUkU4u7i7cOeXcfI4FhNNTyRYlIqy7qkuFFnrg9y/w
	 PsusG+we8j9ivWYXaPn+Nf/66nQrAEX+X+unp/GEiJ94K1CoW6JCRqtONgoBnIENUa
	 6JYlmx/L/sSxZaZtqMdQUIRyVFb3m9bSgV1zqpIeasQi12WD0QuPaubp6uv/687AKB
	 XVRKzfqA4OiuoIp1YfeBsw5r6z1v0UeFV2RodJk1BP2d1xxHefKvzk6spPJHKbzqMa
	 WHEX5BHW3TeG+YswLjS9I1zZBPkoSmv0ngFy/nkDbCeY0YQv93pV579Va9H/Y1Kwz7
	 Jo5bkLZWqrN1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62A4CC4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 07:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167057228739.7018.12543030258223809138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c649b33271907e930608608cc6f443da51c5ff3b5a64652da18e80f2d6fc294
Date: Fri, 09 Dec 2022 07:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670572287
