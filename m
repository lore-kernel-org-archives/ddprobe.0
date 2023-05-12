Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 570EEA32
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 16:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1293C433D2
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 16:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683909906;
	bh=rltmh73jCMPOtefnECactfU0s8NHCychhtN9xyHMKBg=;
	h=To:Subject:From:Date:From;
	b=o/lYV8bBpaglQT0d60aG94Po3yNbEcMbB+/CI9O+3hqAH5cRreUmMGWKdobNSL+yW
	 tJhcu8Fs/kwUg9KWm8AXBvwGwjEnStBGUhi+lq/VO/baRzLUP4zMdZEZhQaVeRWH+m
	 RezfqglaSXRVUfrJaAxXEH0B7eYpVFYOxTNAFG3gN3S4dx9a3bPV9yUZvjJ9u38afU
	 z5tM3X0xu/RnvYVlS41zSEV26JY1hMlatbUGhe7nCFJEQq9KceF9rGrePqW8imEUXO
	 aSiIcagKw4XjulOGuVPQnNx9qmeNDgu1glShgu9W647aALk19EOM5UUdPkcpcOPpJe
	 3Vyg//otM5OqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C93F4C77B75
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 16:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168390990580.26006.3948787207442359741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 351e1723848c252ac7b8b59744131e2b8f7af2867ba996a8d81fe3839333bd29
Date: Fri, 12 May 2023 16:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683909905
