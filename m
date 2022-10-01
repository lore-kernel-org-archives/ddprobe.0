Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEABE7B
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 18:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73822C433C1
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 18:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664648453;
	bh=z6yy49vttIB4vkAX9bK13kZmDFJ6JC7aqRtL5aJEwwQ=;
	h=To:Subject:From:Date:From;
	b=Exs+xBolMBljcKI1DbB64QaMPq2rOwocqK5wFzmexBlwgqNW2WW8ggp/HTY4e87hX
	 RtTLiwnwSPlTh7jMayzDbslSyH0Abx0J/52YnfqJ66wQzyheUducOOlWCAo8P7ishU
	 k5tK66SyDVtk+fJZgcSGZ1XjAx5S4Qd634j2ePVZEO+p2Du4/WA8QXIl5VD3zmocWF
	 IWz9aQdBlUfe1i7gWtnVCVQQn+g+gQYTszzPPXq8nN323X+mGwBavWB5QHXIQkoRKL
	 Xj5BwCqjS0tf+Te+43yXruASqRyRSoY9HSQWXUq88rgJR0XABJFuZZYCvzxeIop+6J
	 +nTNqz9SECSCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58916C433F5
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 18:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166464845335.7044.6643281381009918476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4dbf00fc3f31839665f3e33225c5c004f3fbc3d1f82dcd49ec26ad57cdc63b4b
Date: Sat, 01 Oct 2022 18:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664648453
