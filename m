Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38FC023CE
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 08:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8192C433D2
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 08:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680425705;
	bh=Las9Q3Nv+1b/6sXiOF9DRAU+JrO7zpCWYd46teszQkA=;
	h=To:Subject:From:Date:From;
	b=ZOCkyp70ALTahIuPgTHmoGYUvo7DMH2jPY5cDRXcKsh+CyKSTj+NNYHRIZ4yZiava
	 q1A07cUL7XCfLzP/eNjdqfg/L1lYaEJhEQRhPzGQ0XB5rhObYM9jMMUzHZPLhQNZEB
	 jee4NYh6RxZVfS7GN2EkFnvYYJhcb4IjkH9s0XAr3OmzQHkeG+0EyCu/ZQScSK8Asd
	 45xZR6MJc3tlBayemqTYNjYArMp6uuWjAK407A6g/zVLN38C41in3ylid+HMVtUfTy
	 7Rd/+S5p5M5hqDcK/FDFqe6JPjYgonA/Zfbfk1VfYD1vLOFKUtgwODZEk2FYD7w+3i
	 P6eRVTLae6RsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBF57C7619A
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 08:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168042570578.7612.9139276180913132172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 346825460307f4a05881c47f123b23622414d09c1998ed946493d10cf552aecd
Date: Sun, 02 Apr 2023 08:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680425705
