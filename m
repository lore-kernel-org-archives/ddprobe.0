Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2A7E111D
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 12:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78549C433D6
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 12:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664452853;
	bh=oEkrU89g+2TisIK9MWUzTba5evy9cAMjr0PdSffobtQ=;
	h=To:Subject:From:Date:From;
	b=cetNkFOrJcylNmrl4AQKmYIhM8R3+CInWG8zZ91vGaEczxFcU9UTPsLYjcKU2pTLj
	 vHOv/lPSKiSqaIXdNpsMJh47bs1xoNbeJpBd9b1RCP/q882KQWEMilREJu/YTT4Tsd
	 ZOpJbJBm2uOvGpVPf8VjAIX8JDXCzz31C4tp66l1AttC5ICLVkKSfRFVNjojiMa7zv
	 Yo19OnmMrsH1w793WANRh+kataMRSUjI3nfnaaoDj1u2X6L0PaLpzzs/ndf0Ho8CZf
	 +nxC6kztA/ZAcf/ruDTldklHD1wfRSMhO1NnyShc0xqXBB4ofqra2GGuN0fjNbp824
	 GSOw8ijlOT8Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 537CBC433FE
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 12:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166445285333.26561.10763536580673660461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fa932696cca54bc07d747995cfa27c9eea356263cda5b9948820a54f3af9fac
Date: Thu, 29 Sep 2022 12:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664452853
