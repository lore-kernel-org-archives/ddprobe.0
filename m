Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAA0315A9
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 08:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71891C433C1
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 08:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669365054;
	bh=UNt5BF3fC267LetVdiqNut6wIRM4U1lhzjduu/UEn3c=;
	h=To:Subject:From:Date:From;
	b=NIEATzplq/amogPFzy264/4PIYzSFS0FEufPC0y0DSSJBU/Z9MY+Hk/CkKiVM4u+r
	 BEGiQibfIT1nqrZtgSx1VjwRl2t1vKJFlLfYxD51zKVq63DHpUB+phdYYgY8TPK3w6
	 LCmXQHhfDGuyrZ98ISOD6H+tt0iO7DTTuZlDY9Xf/PIcugjEUZxZlj8j0dBga71hpA
	 0Bmv9RzHJHzqS/XMGTOI+vSw6uGxEkGxrtdI5c5nxasVEgI3i8+lD9vrrSvRFovGsx
	 XT5WUUKj655zlcBUAo4yvYRecbEO9JM6RB6UtQRj8FCIv9LHYD3sS6zYLr6JB2V7nk
	 opjMxGkBoIZtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53AD6C4332F
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 08:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166936505433.4149.5569036969031928679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b508408d41261881e21156de7d94c0d9d5bc6e2d23ceb56d4eac9cf246d06fa3
Date: Fri, 25 Nov 2022 08:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669365054
