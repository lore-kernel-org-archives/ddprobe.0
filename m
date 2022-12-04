Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B34E31FBA
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 05:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7306FC433D7
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 05:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670133054;
	bh=jJrKIzx3BvAWVmc8k5q7qwg+vDHST6ZMy+JFWqz8bqg=;
	h=To:Subject:From:Date:From;
	b=ebS/wi7lYcNhz1WOUkGBkMnjmlzPQTdEHIKPahrNFUCeg0e2I4t+lOqeIqQDIqT3d
	 yKDwYd9aAVpJXM+HppeOH3vYaUwM6TO+MlTxLspgvNZoFw0NSqmAOMTFgtnv/Ui7Or
	 dZdRAUw1Ocxk/rPZf5bcdZfV3gJfhElvd4SUMRGcabsy3uLUFKgKbE9HYYJN9KpQZd
	 C9EQzfbaA5rQ7TEhHTphTlO9faz0QPL7ptuQeMCcecv3pAaRD8/eZkt5Y8OstcauBa
	 1J94r6Ka564DF4DONAFoFlbZmC2qDG3q5Dham+VhxpQR1y8+jufVchK7vj19l5fxhI
	 ccTNPix8VtP4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56D58C4321E
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 05:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167013305434.18737.5264009049384802125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf8b2d80cc11b33c85bed97ed271dcc3497aacde03f8f1aa2980caddc506face
Date: Sun, 04 Dec 2022 05:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670133054
