Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20FE45673
	for <ddprobe@lists.linux.dev>; Wed, 29 Nov 2023 03:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y7YKgZeO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F9C7C433C8
	for <ddprobe@lists.linux.dev>; Wed, 29 Nov 2023 03:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701229696;
	bh=u/eHrMPq5gpgWsP9axZxFbS4aeIa96kEiWW5ttBqdhg=;
	h=To:Subject:From:Date:From;
	b=Y7YKgZeONljGoQpAyuydUMKIxSr9klFYcLxzKLTkwLh0+Sw/CRC646EbTr3Y37oJB
	 3PNFA22CCcppCU01Ipm3++ezbajzEobLCAryz0lJfC0v4dc7QkCh5ucQ1JNsD9KI6E
	 bGIvP8OMbQx658yNk/R2p1ZPzr31NSI4gMBgIutanveg9CtZ75S/tdImizcB0D0URB
	 W70/1uVvuWoRb0B04jN6ijNN0BBOoAskw92jex029VlhlnKp5Z5gtK95UNaGwUTBtf
	 L8r9TYKihI939YJ5rfZFMr7RdzFRZW3CaIgSQNVcNk9T2WjKRmEypEo/lMNHDbxZg2
	 QaovUsCBEvF2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65D3BC4167B
	for <ddprobe@lists.linux.dev>; Wed, 29 Nov 2023 03:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170122969638.20340.6858491840566368121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19e4b0b841eeb6d8e2e26f6b8a6bd7f08fd8bf4d3661c279507529bb3e643dda
Date: Wed, 29 Nov 2023 03:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701229696
