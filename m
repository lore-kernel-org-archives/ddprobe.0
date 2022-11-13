Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD7E71850
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 15:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7832CC433C1
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 15:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668352854;
	bh=6aAdyIemdMxpDOziK3mYBoK45e++4EP/YO+XNJIDNgc=;
	h=To:Subject:From:Date:From;
	b=J1PSKHzmr0m4HDEr98V8szoo9jSldL64BUX65oE84w7Mc+fyPKdMlMkkDPum++rFl
	 ny8pZi2HLhXfiDSkK6zhMiICPdweBeWD/sQEy/e2B+9YyICGCSUhfueHHDE1BkLazF
	 kl0CKQ35y9jL/jFyPnycfJnXcDkrWHTiJmuUR+A46vHZA5DU+wYqzBdwRHk+u68R2u
	 qLTV/P6g81gs8plGtYyRcx/W/Rxe9W+/4y9cF2tD/Nh7/xC+XWANlE6jk92JjZeY+X
	 GhBOIOMAkyp7/W5lK1VdtWZTqY0CZ1aM5IwSSoIes5YhG4VIkkioJQkdT+nLTUjW7O
	 ED5r2QdcnkRaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55945C4332F
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 15:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166835285434.4229.15629663321814561601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adc5c9db728f7dcf6ce7cffca0835119bd319f7039e727ea3638c2242d217dda
Date: Sun, 13 Nov 2022 15:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668352854
