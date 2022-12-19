Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3BD08F5A
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 23:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 95851C433D2
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 23:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671493287;
	bh=b6gxkNtwTw9UwW73viHsXkUMIDN2DPT0wLRwJGLmIio=;
	h=To:Subject:From:Date:From;
	b=DURcaLttcnUiZ6ujt2orciuFVvKoXJkzTx3Sy44wniiNXMAzQoO086tGEj2ireI3c
	 5AoNB7+eLTMs8iseKFXb0F7Jl+nYyockEFmE6Y4pp8YEGCzhUf0ZORrE8GCrxdF69p
	 KoffxepO6V9hIlzD+QfFnbK6ZYOtIG6ExP21WEJHLKdU5rFYoA+I8q4LDLkaL0P/Pf
	 uvx9wsMGj9BmMl3x1H+dm4F99jhA1Z7g/kXQT8pWJE3zQR6EnWK9Ze7udEz6L3FmMX
	 uUIsaSpottonDi7SOZJBDd6SsZNN1IKuLFNn15UKT7vFmv2pKkuChwe1baNZwYQHuO
	 k6IX3/EG1ZU1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7A0A5C4332F
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 23:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167149328749.9811.11594412085889884936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68059ca8caf71c905de2a4f2d517c4d10253057f7536367c2979c5b523eb61f0
Date: Mon, 19 Dec 2022 23:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671493287
