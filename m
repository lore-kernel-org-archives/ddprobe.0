Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2F6F4123D
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 19:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ac1z/4cN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77D4FC433C9
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 19:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702580896;
	bh=YtTSnznL/bOd7edLuT1cqTFG1+vNhlR1AXYAIo902Qk=;
	h=To:Subject:From:Date:From;
	b=Ac1z/4cNnScQKyGV8tR1PZidg8iqjbO6VMCfptWIuxunhXaCm6YwBKplVVLM+Vu5H
	 ZrGPUilKmXMDyWJEayA4pXQlNozz+OX89DzlL6P430z2LeyjrneUv5fbWN1vFsRnL+
	 Ns6hOxq5F8i4x75Diq1zXF686Pye+CKjd5jqO37NCQEqMed9Bvh4fprTc1qL6Npp9R
	 wkouqnqBRVJrDCxbDmJgZClKOaracA/atJpUgmO+GOD0ox7MTZBTv82rXGujqXAsXs
	 +9Q+AohgrerLTH1EiHSwoKduWhqaca+Ckr08+PhmJk9stGe3w2Uyu3s+FQT7fX0Sld
	 /NrXHiTutXRrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F8DDC4332F
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 19:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170258089638.19229.10455557674424720146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54e50047d5c908566738326c12f971476ce78fbd1178ae475d42046692585743
Date: Thu, 14 Dec 2023 19:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702580896
