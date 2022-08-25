Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE2232F47
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 16:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E9A5C433D7
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 16:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661445652;
	bh=eZ377g0s9t0VRgnEuiutlBbJrwIwivU8jGDhjrpX9yU=;
	h=To:Subject:From:Date:From;
	b=M5dxlAZT57ywKkspipqe5yKKO8DIqxzk2rDc2HTyv+7k0FPmngc+hiRhOq1S1IYoM
	 V1GFD075LTaJKXRwuonzJhdKXwXgXinwurtnGzSvGolEFsTPmdpR/e9jnlmOOa7sHt
	 pwdfpgaRRR/0z4ZV6BfNcaNAbyRd2HcqRQTghj79A104hWr8tDZvB7Bj9Clvjj6yVp
	 o0MZ8I8NKhxOc4Y7n+dJ91GVIBoaKb5kg3M0i3yZXfmOG9Lu8K4+GKIc06FIs0DbEN
	 VSTgaDiUoO5ectblBBzs/jnJaTWUOflAHUuwnMixgj/l2ENNukU3Ugh8vVdP8Z8YxX
	 ZSnb5yDsYqUWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54CDCECAA25
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 16:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166144565233.10191.7763300104771311846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b1c2fb01d01414fdc2c06ba89ea119c06b71f1fd129e8dd4521be48a1e9d926
Date: Thu, 25 Aug 2022 16:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661445652
