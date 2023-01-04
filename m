Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4491810
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 11:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8847EC433D2
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 11:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672831287;
	bh=m7agwxYG5w+C1aLlNlI+vglXcXDFrSuev30Sklcfayo=;
	h=To:Subject:From:Date:From;
	b=RAA8RG+oC05hMoFJ1dRvqKnhzZJHdr4KnLqtWEtSv7aZfKSpaVvcFUoJ0F7qgtDQ/
	 qXw5TwDe5ptWG+9gRP7gU3iysOImrbUQcpgNLycqhpNMF9MF8Xx41iHPYZBOViT/xq
	 wrqtcWd4a8UawkXXz7XMqd5XaZHi302iuKzlQ7LJftDk4ufM0LQuDVzXnQWmSjJM1v
	 OYiTZ0zQBzc0t09S6IjsH1mL+X5bJ+ItVnmFjb7kZBTd74yHxgiISczYtuZ/DfZaE9
	 gB7u3o0Ft04rWEexl1dcLgHrddNrn8O7+d2DzZDYtI6yMHMa6OKNIemmLQbl/gylbC
	 7L3fRXThOPCSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E2E8C4332F
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 11:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167283128744.21766.12494497187038025295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 530114dbc4ef31284ea85090cd3f95b5b79706b59d6e0f5cece616e4401b074e
Date: Wed, 04 Jan 2023 11:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672831287
