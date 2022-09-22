Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B77713207
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 11:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 64E66C433D7
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 11:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663846853;
	bh=5BMnohtIsF9ziaedlfZms9oy8RExs8RR8sU6Sferxxg=;
	h=To:Subject:From:Date:From;
	b=ErdO17kGOJQzXYvvV4CSxtQiL4DSufafgbxCxeGs48gHGX7kGkn/ZThYwkyl+sexT
	 2rUR9PsN9PFn3Kmdz0wLfsXWCdvFyJMsKciZd7K8R1sDwauN2vmUUuIC3EvDIsfaxt
	 YMXtCxLr11snd/oNelVu0kzenk/OXkRLLVpltfzeOq1c8MwLgYX9Ezyep6vTzNWske
	 4ZHNf+tOsQyzXLlKK/JdTyCz7iz4aWHIvY/n+shYEjGS4eZpSBy2yY7nhFCWRt5oYZ
	 xiNmdV/WfPFyip17Wt/giMQlwrCWDDIBrp7Ou1VLImBW27Ib0FJyFh9+yQaSiz7Oxx
	 ISIVexARb+YCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51088C6FA82
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 11:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166384685332.32271.594504463276131664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44062a7a76496156a7c0b97ce242c32f01fcbb1d4e756fb0d4852bb7c2f19f62
Date: Thu, 22 Sep 2022 11:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663846853
