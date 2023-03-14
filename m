Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7455923A0
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 05:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2BE3AC433D2
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 05:27:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678771626;
	bh=xOld8kYoHH6z1ikmOv3XqMDqivwDTgN2g03f6oPCaJI=;
	h=To:Subject:From:Date:From;
	b=crnTxaXuUM8K/hKAn1yFX2mQp8apeIg2Z9W1j02qyrpnVhNd/TZwCHCRd/RZsXVwG
	 34GHCLo3+mEdN57ec0hnR8GVUYCtp8DQVxpkzhYsI80IQn1IUS2IeP96r4vXXWk3gI
	 kTsUxBPiWgrdFqwBJltLbxqpD8SMr7QUUeXHm1O9qD7Vl2neoDgn17jnlsFv2pwdrh
	 yPD69q8D9zmF7D2wQ5cqwv3vRtplqoxtTqoGvC2RR1Lzv7ixkUvdvFF+v7a0Sh2yEi
	 heUtgNxTMVTlAfUI6JSiM4ovZII17+QCFRIGGy2XzJqJR9+IIeA6VTc1IXr+TL7jbc
	 jGvFBPIUlDeGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 12951C6FD1F
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 05:27:06 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167877162606.768.17236456977178101887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea8b60fefe1147cfc327c5251021c90829cb619aa80cd03035268186f823f2ad
Date: Tue, 14 Mar 2023 05:27:06 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678771626
