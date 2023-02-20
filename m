Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 401D246AF
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 14:59:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCADEC433D2
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 14:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676905145;
	bh=uCjVJ8wK5O3vqB0Fqx1Dcf/XnqAxpwnM1iDuDQ7aBQY=;
	h=To:Subject:From:Date:From;
	b=qi+XHOfYazE0r5s94RZn13mq5Vb1Z0CUF5YP3VLzNiusD86jOsp6YQgTBFi5an1vF
	 g60EKyFCaLqUbPzek/fPff+28lEtMI9oZjHaUx8/QDkOVl0hdfuvkUrgIYsS70BTSD
	 M1e0o3hgQQkYGGeKY8QBKerBQifTzekMCfBLg6bIQOWAGPFpwcUqqOAdiqgpvW/TK1
	 Q5EXtX5PgrHOAATQ952q3pNwJlGgDtAsQWgUouIIc6ocyCWY3hWR3eQocGCHY3W4Yo
	 Qk+JNv3Xln9HcuAQrtWIu1hRmQGsLaOV2Ra7/0S8FjGkbiJ4sznsWLL+p481CPXCKD
	 VfQp0sTz47InQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFA22C05027
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 14:59:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167690514577.27503.9260860813407807437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af8fb7b5d84badde491f7f924f9c410ba6735e3b3cfcc1ee724b7e7932a17a5b
Date: Mon, 20 Feb 2023 14:59:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676905145
