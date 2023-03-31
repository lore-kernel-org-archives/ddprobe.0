Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36C3F8835
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 16:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D41B2C433A0
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 16:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680281525;
	bh=d+hZqleQ46UIMcAzxHc4GvtT5ehIVAAQQ8KwW/Zg2Vw=;
	h=To:Subject:From:Date:From;
	b=alobGgR36mqKGGIyPGoA4jY5QBiyAgK8MtUdjNsqZV1FvZ0LJTc8THesvSxrTZWuf
	 q10WyUgTI/hJVzmNE+PEsBg5/rN+IpT/dht0sLg7JG5UOGY4qLKQSsQVU5rEV5hnbS
	 b/4K1khEOt71t6ZUMMihxCEcuQLzD1mtP1RF/vb0T4OghzkSKR5xSJx4k6/mGRkylI
	 0taQiObGIjMuNE1aZi0XQxXmlCfR31tZ5Wll3+So2GwXmO71G7mB2d7R8Te2OeQ6o9
	 QS/UsIxYDACZ22xHv87JbmJ7gELfFzjhRvwh7GueAiX+KHEqhHaQyo1IKDuk/2QW0J
	 xBB633gJt7gqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC865C761A6
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 16:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168028152576.16837.15275440337106342381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 562324c6d7035447fc59572d147f3da0a4e8dd28f39bb9c034d5f2b7f68bee17
Date: Fri, 31 Mar 2023 16:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680281525
