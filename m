Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 101BA17F0
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 22:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0553C433EF
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 22:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672696887;
	bh=VJjkOA+wIlPKAE+ru3Ew+NS3TCy8AqNr6EdAYrGR8VI=;
	h=To:Subject:From:Date:From;
	b=P/fTAbMpTwE5BobpcYfBHIzKw+7Bm0uqBGWWvTF4q+gI7zwrynKN7HVp467D4hxuj
	 qWmGj2z8vIe82EI9q2+dv+MgbVoCoDcV34qCu9DUrBmIAfgrRgMMXWwa6cNnBYYHsp
	 ZKUm3A0hX7ldFHHboT6UU9yOx6X4yKTF5ZYwMvh9zxL6yTYA6LzF5J5gnLHFKMn2EZ
	 MQDcyQq6roIFLbuDIJFCQkmyHaNs0DOsA0T4P8FxLoQieob2IR1W3jVG3jBXNhhDzA
	 Ks+pUdNS/FN9x4HVMqRItBPDuc0zxOD9mvA43Y9RweJ/LbezUInhDHRrRCBr8BnvIA
	 ls6OedhwURHxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 780A0C3DA7A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 22:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167269688745.30815.16249349000868733639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d41c3f2e6838783c7141774510b80ac35e563e7b6b6d050468f3f7729335d4a
Date: Mon, 02 Jan 2023 22:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672696887
