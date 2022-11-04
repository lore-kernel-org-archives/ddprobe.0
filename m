Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 069598480
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 17:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6733C433D6
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 17:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667583054;
	bh=wLfMSOBCx3askvcbdjN+zQCtOmEHnDWYWLbb3UC+mzc=;
	h=To:Subject:From:Date:From;
	b=jZlffIieaijs/nqVMu2Lh3hZGUVyKfl/bpRh838XNp8MvjBAI5UMIt2Y8Wfr+XCu1
	 aqiNuYvShxFcA/3C2sxBysTzyKGxnBhPLOQIytJLLblaUjsuipt8wN1W4LLyLluR5S
	 7UHhdrTU2TX0DXFsKjMhEQRi8o3OHnArdeyV57+F1/KQOWpm/W86fQjeeiwJZgs3UW
	 W/AyO6W2Kx+n1A2zY8C0rduo2WoK4zrTPZPMxNMYrPGaafREXTiuQnmGYsS+3yGl3e
	 JavuBhy4B0l/U03tpVgKE164zeLM9MTAM6GMoJ0tnYHh4BFeGN4JMXd9bmbVUbnEp7
	 7H9pdR1wE5a7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 88399C4332F
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 17:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166758305453.3690.7151977278302106671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6a766ff3127d4186b80e631a36ea9100bf57de34edd486085b186d9ee455f7c
Date: Fri, 04 Nov 2022 17:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667583054
