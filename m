Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7FB73C2A
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 17:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70649C433C8
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 17:44:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688319849;
	bh=iTr3Q9V56yHrzg0dnxGsYkG2OlcRrfv6NFEkMf9sWZc=;
	h=To:Subject:From:Date:From;
	b=uAzeKzldixrjUrKvXQdsHwutODfyDsaay0F3oobbIYM+NA5d5o3hh0lex8+l2SKcX
	 FiOoiQWNSuyF4EI6p+YDS1t8lOJXVY2DzwCmFBRHlxzcq6rfoe+baL1yDWz+WI4WEs
	 d+OKJSzVTPmavMw8RbOHQA7UOXksxMuR8FLJFAcyYnk9G+QbCzZQn0PKz1EPm5Rvqe
	 b0jxfq8qug+pQ33ubYF1KbkW/vQpu/ag0Omp1PxUT8OyhdiDBWUZkT9I6En/QFm+IM
	 Dps63zgA7wM1d8vIrvGjChzHBN8R720IVNVbuhC/z7jRY8pp8FKzx4ynErxtqk3b5J
	 pLoRO9vML2PDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3366CEB64D9
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 17:44:09 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168831984915.25454.12127209646035534093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4528b2a68d43a7edd714300e232fcbba298f83db08c7422cd4e0f57497c3f6f4
Date: Sun, 02 Jul 2023 17:44:09 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688319849
