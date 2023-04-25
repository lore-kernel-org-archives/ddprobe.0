Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30BF37B
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 08:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3522C433EF
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 08:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682409905;
	bh=VITMPAZBloGPXpHcuCat9vZTYCc5bMtD7uWo/Wuutis=;
	h=To:Subject:From:Date:From;
	b=VJYqKuRvMpD6jDjaHN+QJNdj0VEeAVFM6UdFreMdGbE/yalM0ZDpwRoHa/5T//uwZ
	 BaY2FXMzrQDTmmntLuoGCpBt22hoXWKWQerMhJP8HSWMOUMrlMDos84OKeqMaj2Bqp
	 NW00m6z8WFZQn13BP4MS60dcur12SQZbPZvSMtcXQQ/Z4yiVbtWfQ0Lyc1dODaQsB5
	 3Nd9rFSUnjLvoOF5JyWEQ34nHhV7uiSaj5rQ1xo7nTSkCLNQF7etOusGup8hizyvZd
	 K60l1Ic8YCxS58F5iwUBi9n5WaXjYYIXGkpOcssMUUcceNeTN2rNC2NgzhHpjO4Vt0
	 XTS0rgu3ZYK2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3BDBC77B76
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 08:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168240990578.15548.4414567742070601970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec6001a0cd7f202b2cc6c2e807c9084cec8ef7a80d5cc3a14a576341e05cf42c
Date: Tue, 25 Apr 2023 08:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682409905
