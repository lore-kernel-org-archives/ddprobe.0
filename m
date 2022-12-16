Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C32081378
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 09:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 785A0C433F0
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 09:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671184287;
	bh=eD/mo+LW8DCDCpZTmdJLkXkyZLIx3LjqylPaD76X20k=;
	h=To:Subject:From:Date:From;
	b=Mn4u+LmjAeRSfccDA9GzBO7E/6ZB+fAvXtQtA83B3XcfPdzd/IyNYN/vjWs4/cffw
	 8Z9oKOuZh0N+UIsVsKaYucoPPDlW0htNMBXWGIvke9JWf6SS3NDZ3sV2K3E2WZUs9z
	 cAhmF40AJBKbuxiU9cO8e7zbDoCt+Se9516egQloiIaxZluSY1P0Ncd6ecb74+BsWS
	 17mCni75gRITUhBzFCk0c99yeuchifGMv+UwkOcUTW4OyZQDFMOoRPlzw+yAVel10J
	 6lJ00G4RHyJ3gv9uf73r+zIOOht5hPn55D+jZ/iW/ZZi7JbzUPYV3WAo03Rh6qMpcY
	 Ndk6fUvo5awwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DF9AC4167B
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 09:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167118428737.15906.14417721696553823152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5d3fe0325f33a8fde76cb27da2f662bfe5bd3f18833639747b904c2bfdc86cf
Date: Fri, 16 Dec 2022 09:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671184287
