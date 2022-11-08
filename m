Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1A2E28EE
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 13:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CFA6C433C1
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 13:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667912454;
	bh=C7wpLIFY2vu33D30vb9duRo1dA4jSFk30cwvBU1KQ4g=;
	h=To:Subject:From:Date:From;
	b=Z1w+fW6k/aXBjqBkYvqCtiTCqskm71HuhM1AbnXlCcobvW70MDQrtbDvtjqB7TSI5
	 Pn2RYuAYA+HB2cROJavH5Hy5dWYHr43RdsTrpbv9Kp6ig6I6+5zwWFcaVLlGgUZ9uH
	 V7WhB9H7eUt0dMoOGnSTSCFWWjzV2Q6/QaGqE7v/HlKuqyY8NKp8j/hgsDWZnjFiPA
	 l0giDJBagxEwgHr/Za2zpyJBE9NUAP8buaA7X8dETlBAyzya9b8dT8LHFFxgFb8jDH
	 X75s68Qbun6t5t1wliVIgSI6RgsOhrS2RKIEBE4QnOh0ZuWis7KM9oQPerZ/PrqooB
	 yv4g709bYhEAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EC20C433FE
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 13:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166791245431.13591.8493651343178198567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc1f512deb8eb30c2d4522f17454152d9657e57232ce338e062d6b774488b8db
Date: Tue, 08 Nov 2022 13:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667912454
