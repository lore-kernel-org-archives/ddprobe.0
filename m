Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EEFEEC0
	for <ddprobe@lists.linux.dev>; Mon, 27 Nov 2023 01:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qS3uWWTC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F3DDC433C7
	for <ddprobe@lists.linux.dev>; Mon, 27 Nov 2023 01:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701049096;
	bh=I+mQxO74ffViWXryJEXKGsfb3GdnWZNYSeG6By0zMaY=;
	h=To:Subject:From:Date:From;
	b=qS3uWWTCA0QZK5fnxqMkERNQbO7/RsI88N99xAXGCkCoyNhgd6beThXu8zcAwJhAg
	 Ise7pLXA0eTqkjZtCCOXogJ+NB1yKtTWMW0h8AlzFJ//4FxAku+s0vFQxKyywy80a5
	 vhGhmUbrFwrqVTFv4zbl3ZRADAqFlioE1zuG+TtjHl+JtOmQHNM45Z+F/Yug7KZsqH
	 MxFXwOjTPETXaF+x4TMWi8rm6at+u/RL8bHtonL131LLSjTSeOj5kEGu+blCR00U0f
	 eiP1cBYWg1kw6Y70DuedxCKpkCLDy6Lm971DumTfx8cc+psiacgh7a8ocLf8BEJOR3
	 w93RqGraRZs1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 632E6C4167B
	for <ddprobe@lists.linux.dev>; Mon, 27 Nov 2023 01:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170104909639.16344.15843651275986247998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32a37e041ce3a943f1987007fc0e2cae0da42812919b4b2ab1213f72204ebf91
Date: Mon, 27 Nov 2023 01:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701049096
