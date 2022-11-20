Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C57CD628
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 02:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 792D3C433D7
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 02:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668910254;
	bh=RwSuY4EPhMCTWtbBMGYhxBB8Ww9zwJx8esD7PGVV5zc=;
	h=To:Subject:From:Date:From;
	b=HDM+NSejVoro3jTcCC7tw/mjU5axGuPyfRIY7RgkNq6mg/TtYQvEWCspMZKi+IzJc
	 8lGaErisl2mBQBZLqjtyti/tP7FN6dVwC7n32hi2vabaYV41NmejwSBHYZosVOrNoB
	 Wos1gVixcg9aAyrYu5/IfAzwFC9jy2pNYVMOucGmW5p+LEKBWh3wmbNQTWWKIIDi1r
	 KGzhJzjX3DscspiSpVPJMoKdjvcQ4eQOL0xL6XD/fV4GmsdiyoZuFzJTaf4XC799Iz
	 nl3IZv24ZSyytqi3NSD6E3n3KmqFmHOD/T/b7ndziNt/lStI57fVBRQ7kAyzqD7Ulw
	 uWW3LP/wpaIjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A447C433FE
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 02:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166891025433.22389.2320855383434331559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8f0b31aa05feb9b8c4020ccaf0daf08a559b8887b1dd2e477eb3d4511568d86
Date: Sun, 20 Nov 2022 02:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668910254
