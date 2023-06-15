Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60ECC379
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 02:17:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD21FC433C8
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 02:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686795428;
	bh=YYSye0iCnxdrAOmuMXg1tKj1IkmPFMQBbjAw3rSqGDs=;
	h=To:Subject:From:Date:From;
	b=nkIfMkDG0XQnaDXkVU6pIJGNEioch38nBC5nl/fN7B4jbAvgiMuVt2CDLg6Pj3Kqu
	 R9kD+ndtwtdBb0Yxbi8qAkTudb5TfN6iYZp1iMRKmBtiXo7DH//3lJgDTWIP/MzLb0
	 y64SlMQPhxFQTKXjZBb7o94ubvWNA+QZN8v4GxsTSJOsLaRYnIfowDhe5zmQgy7v49
	 +HY8W3ZkJZXHSDm8vFGfjvHjWOUZybRp1qQrjCdhfIAvfDxGmeqpmrxuju8DjMla0Y
	 UxiZixHfyUACnzbTVDx3iWzrYrja1B/RURBU91NWOd77vLOtACS4BGDP2+/ofSEGUz
	 zZx+akubY9yYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC42EB64D9
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 02:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168679542871.24486.7864457516091603687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6fd6a7fb2b5f8d5d5c80349088ce8c011347cdd8e9630b0a67d3b80cdaee5ae
Date: Thu, 15 Jun 2023 02:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686795428
