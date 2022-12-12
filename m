Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDD7828EC
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 14:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79F18C433D2
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 14:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670856087;
	bh=lCSaMzR2KHMYlc41y/MxlWRCbWcXTrlowd7z7NRhtUI=;
	h=To:Subject:From:Date:From;
	b=i42nZtdOCi9bDZZhTPEVHscGaM5MWnlD9/IIMZrjjBdEQ26IwwuLMktWPLDMg5Ni2
	 +m2RvDXCJQNKo42u0Y6BwOs/foqTVtsckr2B3ZfHXODxiIrI/X4hl5KAcTr2f8qv7v
	 5BprO0fcYtoPbYrLr7dCvTSuZ8JLQQrz9Cxrdn5skaHxF+9mtx9lSm/BeHyrh+CucJ
	 dyN6axu9CurGMJkEwtw++B5pVxdcrtCxt+3duY4qkrEedqi3XSC601lt2lMia7f6D5
	 uWcg06GOaQl/kH5vOajl9wKcbqyzKAu0I/I26nPN+RhShW4EsPQWIlbkQkuDe7V/ww
	 v/UzbQ/7nrTHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64BFBC4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 14:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167085608740.12292.9765313587824006873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 615bbad545f0a1cb6314236be94926220932ee2480b0b2ce0e4ce8190aafe5b2
Date: Mon, 12 Dec 2022 14:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670856087
