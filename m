Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1B62182
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 05:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F884C433EF
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 05:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672636287;
	bh=8iNpbKeGErUd3nKXVuaIaMX7BkwPwCo6k8y4dsKvCtE=;
	h=To:Subject:From:Date:From;
	b=MtiY/Xovyr7r41BIf8UkeTtxbFLpa5EtxDSzDoiKHeCd45NkJlqG9OxU18Z2ZHGhW
	 S/QDROC6bcJBGIS0bu9I4kS9mNG9TchEq6vQsPMF9jB4oWDsf3WqhQVKlmf5TIhmoJ
	 FEH01pAMqgfwD4YJXZ6BXjOjbt+le7WX8S7Bnrx2c8c6Tv+wqFzgpNhhdqcjIFt8Eu
	 UvLPfYfjidki0KRN9s2iF/Dz296uLEcGHjvhczWB/pxDz402mh7Px5kFDbLN41tpU+
	 X2OHq/WfJYUIWlRcXyKfszdBWF8WgT8bccV/dSWhzHkxGC682pqI69GSW30dd2mvqj
	 9n2AJ/OUWU81w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61E50C3DA7C
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 05:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167263628739.12192.12110517313873037601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5646d163501f7db214fb96ab5e44030d693dd1c15c90cb4f22b4def2e11cd9ed
Date: Mon, 02 Jan 2023 05:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672636287
