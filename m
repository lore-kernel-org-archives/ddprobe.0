Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37BEABA3E
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 15:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7EBAC433D2
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 15:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680621425;
	bh=CA37UYTrzNTrwrAbMK+jE4/wVUvvpYaJfo6VSbVvMZg=;
	h=To:Subject:From:Date:From;
	b=l2RteH9prvepaF/6YYEtZ8NZzxCYBDMMwloqvsiQdaByu8v4Aq66/817Lt0bpoe47
	 sF8eyEAPomGiBLQ+1MHzGn2ZfVI6uXfs1tSZc4KwZCz8QRHcqbQjUSp2r9wsFvZCr6
	 CLD9CeQUR4WyhVguz1407zUfMZY/tVIdSAJ6dpmHrKlU0Xr60mvQRUFvyJ84YEvUMG
	 9Kl7dNYRJdoUgCmCT7TMWZO69uNQwFUfQRyQ3kI3hHO1sFH1to2PsFlSq2QvXTaSqu
	 PnvzHdY5V9tVa8egiC1qQbH432TL/+hKmQKxSVlBuwbxtuSRdF9l/bUkV/IQxGDINL
	 Xu5ZlY7ulaCTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B99F5C6FD1D
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 15:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168062142574.7630.9362376744093546333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96eb0ff83182c5a84a031cc6c37e5c8ea8fcdbb5e64c33b4c606a836fdf13322
Date: Tue, 04 Apr 2023 15:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680621425
