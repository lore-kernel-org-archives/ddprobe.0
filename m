Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 970042AB5D
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 18:12:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7885C433C8
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 18:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687284728;
	bh=HZfQv+PnXOeCaqoWusupIla0Phj6EWEprprspda2eN8=;
	h=To:Subject:From:Date:From;
	b=C6ILuEi/IkcxL3/nSvkqbZ+boTMbVd+As88/hHMTzu6lylFVzqs/mbkByBzxu9qXR
	 AwBqsRa4P80fNidlmLRGoexdOp7KbkDTAobeNrToT9x0lKEtPnuj3JB1T97/VuDLdF
	 ogffqkdqnPqHY0AEthPd96XHk87+zay77j1A1qHSPM8B3vSBx1nC5ExleECF3xgdLV
	 9DHxHPWVFVBaZAfnjD9vvMSMAC5I9RypWnxKBNLtcCmH9Pee/k4froa9trmLgiTB0+
	 WzcAvtX7oiy8iObuzM2sGse8YPFP7Ue9MAOxtdNqeViFKHoX2oe0ucI1264xwGArr4
	 mKmjnFbuSr2yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD42AEB64D7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 18:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168728472876.7505.18119523735519998697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4ab26c377fc91afc77ce622f414cab43022c3cf08c07ff20a5aaa878f7040e3
Date: Tue, 20 Jun 2023 18:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687284728
