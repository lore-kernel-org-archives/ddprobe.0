Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD5C72F41
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 22:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70107C433D6
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 22:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669415454;
	bh=tfsew7FU0ibY+qGrihAaiX9J0v7d7sT7bikGrj0yax4=;
	h=To:Subject:From:Date:From;
	b=E72l90L4ZS1fzbbGFZIixrRFEWgnC/XqtEpDn7mavJ9GMddoD4ldt8/9jGGKA00zA
	 O3kCGr/8FKEctERa7/kRKexQc+1CZfm0Nv+IMHck8RR2gCKKtTd+Ycyu4MMSBBfPfc
	 aFaV0hUKttxxUL6Wcp+KGX0RzBWz9ZWE+vjeYySqIGwA0Vdt7iRpA2AEmDYQGMzUEq
	 BKFFFBZxbcb+1/+0HElnr+dqn4/JH0BHSlemFf7GBZr1JUVuWsmzE62pRVJaxUC19e
	 iqiAV2MPH7srH3vLjkmWrTc/B0c1T3zY6tGapGAvaSAwGz7RdVD3QieBG0M7btkszu
	 L9OKloGKuOkmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5716DC4332F
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 22:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166941545434.14112.17830665989624143590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c26f71e9d0e53d702070a4c59cdaf17dfd74258a0ea6d390171b1c06c7079169
Date: Fri, 25 Nov 2022 22:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669415454
