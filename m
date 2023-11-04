Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15357C133
	for <ddprobe@lists.linux.dev>; Sat,  4 Nov 2023 08:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pw8p2SgA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 813A7C433C7
	for <ddprobe@lists.linux.dev>; Sat,  4 Nov 2023 08:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699085296;
	bh=Z5B3JVKz+719rzbgHGzLefsrz4TFudZndzL+5SAZgyQ=;
	h=To:Subject:From:Date:From;
	b=pw8p2SgAztJ6m7xfQ5PdYa9jyNodWPltxCAmCULJGiBfKezAai6grTBo6jN2TgCFl
	 Kp8GHkd3tigoBq7U/npCZnF9UlHdYDZwhSUQpCUHgUnTZ3yn/MF19yi3YLyW6/87/c
	 pPV1yiS6NFPOMcnmpnlMiNBSAtlPT3p3c2ScnlsLU3zyAO1qmaSPmDnr0YRrdIH91a
	 Yza7V2KHtHDB3maXIFXO7p0iIOCTp3YVypP70NQeOjInUL+DTgsQ4edGmYnZCH7gwn
	 zEvJv1KxpuWebSQHBPHx+BBwu9/myN+4xJVcDeSNxsFxYdeX0Ltichn0JPIRtK8GML
	 xqNeTV9XpSXng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66346C4332F
	for <ddprobe@lists.linux.dev>; Sat,  4 Nov 2023 08:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169908529641.2936.15988299306087480013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dec0198bcd7a8b5b7b780ee7ba7b544708b22d0a311285876f9674b1af14ba95
Date: Sat, 04 Nov 2023 08:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699085296
