Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3909B7B
	for <ddprobe@lists.linux.dev>; Mon,  6 Feb 2023 17:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5F87C433EF
	for <ddprobe@lists.linux.dev>; Mon,  6 Feb 2023 17:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675703765;
	bh=HF1iHm3FgD+LKLHmHMxptV2w+CggJWRZpvwSr9m2idE=;
	h=To:Subject:From:Date:From;
	b=USc31XfY4uvuoY3Q66Xg3oFOA9grxQd+MxplnQNqfeUjRockCxBWLfvTk5qG/yy9L
	 KJNfuXJM0pEWt11uQ9lXEaBpYNuSabTOGbEcfnULCtWULm/P3RNNwblTnGe5DITazf
	 0/kTGLn9JNFFWYSwHj/hlk72nHNJP/MZ8d6/yLhVGHmxas6+zm5SWi4x2CykqDDTfT
	 99VC5i0uOZaWrSbq6GVYFN8Pxe3cI1KUfNpClqkNl6M/3MbrXMekSkR3bCuN3bgT/Y
	 prGMnYkm87LO8vJYtGyK1xOgS/MZ2gEXfLm/qApr86qw024nPxAGe9Ose1CoCaDKPF
	 e0swyzfXO+WYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE3E9C05027
	for <ddprobe@lists.linux.dev>; Mon,  6 Feb 2023 17:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167570376577.10880.11912017633028627014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c81f452ad714ebfd0fb5e19120d5fa6ac147f5bb44e098d2a570485b5345d629
Date: Mon, 06 Feb 2023 17:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675703765
