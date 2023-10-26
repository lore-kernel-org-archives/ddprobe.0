Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FD67C8E8
	for <ddprobe@lists.linux.dev>; Thu, 26 Oct 2023 20:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kz4k+IO6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8EE55C433C8
	for <ddprobe@lists.linux.dev>; Thu, 26 Oct 2023 20:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698352696;
	bh=4a2WGDCDjfbyULTUk/81nxk3S82pmMxb43KxO2H1h0U=;
	h=To:Subject:From:Date:From;
	b=kz4k+IO6o3A8OOIoTAYD3z08jEzQErPNmuxexACKXiEdexW4b9Pd44EFRbiutKCJx
	 oE+O0tiH26/7nN26mzxkM7f1RUCajlY49moUDuDfCRDGhV6x8HAtiI3yIKbIWjsUnn
	 OaAMyvP2DZgI1RzHG9XnOakbkq69B3SaZ5UYFvA1qoodPPtDKq5kXwAyjtVYfaBbTc
	 gFj9Jz54kcG/g1YR0hPY/VSzJccMCdhJd2+yyUJdLmo6FVhskBxIj9ISSkfwbdKRCp
	 ZQIk85kwWNCxV+EaJBeQmPMwJjCcYH+S8j537t+E3zROVQ2kZewqR/HH8gZAffZbSq
	 5HoCIXmGPsl9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B756C25B6B
	for <ddprobe@lists.linux.dev>; Thu, 26 Oct 2023 20:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169835269643.16450.10460876572028809335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f95a2583a2c4528d5505464195bd429089e28fc63267ecf21076cc77698f97a2
Date: Thu, 26 Oct 2023 20:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698352696
