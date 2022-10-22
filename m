Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5AB033DF
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 14:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77FD7C433D6
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 14:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666448453;
	bh=ZefvzRanl2QrA1CBDRY0ZG9OnwyoJUDcD63Yc/PJu54=;
	h=To:Subject:From:Date:From;
	b=WsRVa3V3hYcqtBlfgr3HsKQi1oWIp0ASt9xJwa24StkOvMvD5myR66Na0k1Ej/7xs
	 cV+AaexbGR9fKpdBUo7iZFzYn97gY4T+JDFo3qCRDznwn/0Vo9ArpoGKcKZbSTNV/J
	 eptm5eCzDoU567nLnPcsJNPsRcQJz3UGk59rNjtVQKA4FEMyZpfCmRin6pEHObrjO6
	 dd30/ZyXyup1VHB5HjqrCvT18I/PQPQFZqowlVRzMmQ+XUm98l6GBCnNcBx9NtGMSC
	 /kdWS0yhSOL2m3oGMcF7FvWdW2JWbTI79v7jSmXWJer75SWBj5GjG+A9mKJ/ee/1he
	 YT2mQHLrkXsYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59D8BC433FE
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 14:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166644845334.30068.7261179419429703230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06b08211d34109909ec434f82933d49efd1151412b295c56e3926a03564e4b24
Date: Sat, 22 Oct 2022 14:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666448453
