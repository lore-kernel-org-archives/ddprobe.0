Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D45657B
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 21:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70AE3C433B5
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 21:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667080254;
	bh=tVIJHGPPVo+sf7FcdATsWM0wVuZcpz1eeCJnIswzbBQ=;
	h=To:Subject:From:Date:From;
	b=PJ73UZCMAC4+uCNRoE1LT8W7xptFhQBGWhfnQcbvqYzYb2uYMfD+iAfD53MgfgWxO
	 cxaqaV/hqF1KaMS8qKVc6v4iTravC4cd523Tb1mNPQymfoVknO9+5EDtd+df5VN3PQ
	 9tYGph00EDHD0bv0mn5U38gbN96hQvonSEVXaZIRTtUZEpfN78daIFIYfh4N7ai9pY
	 LjIhBJ0rTJA+g5QRS7WJddFoBqAjJhZb1eYPU8Smt03cRykUfX6OUHhnmaHdloXvqY
	 Rr13+HzOECM1ZocKXViSw89Fo8Pswr3L9ceRKVwQoGxx3fdNSOWs/v7L1ypttWd7KS
	 eU0E5R50kMtsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5158EC433FE
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 21:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166708025431.374.8714722680944618295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d5594b6d0a10e8f4ba50e3b29dfe53bfe1535ed796a58083bb768e9f275a7c1
Date: Sat, 29 Oct 2022 21:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667080254
