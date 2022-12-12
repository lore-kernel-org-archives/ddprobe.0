Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D12177B
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 06:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D219C433D2
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 06:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670827887;
	bh=d5TA8dQ4TgocwtHbeCK1G0wpXJadgyzJsW2rWrTXouY=;
	h=To:Subject:From:Date:From;
	b=dSAQheoYwKLwnHkjdhtnDnfEcjauP5a8CLo2rnP8I8vMik7PWu5bf/KFpGnsnnvd3
	 TN7yPit/Bzx4fCU7qzf2+HGi30rP9/nDNkQanhLQcmeb0PSdwtlUXwu/fWe6ulojrF
	 on8R8xw2QvO9rIytz12vybRlF3mUMBfYS5jUzoiMcI16oapq3kf7i7QuZTIwKGN5jq
	 r/IA+Ot5DGJmD2kV7qHDwHhyj2j45b3sPMjRtf36NA2ZQ7b0ob4grLALtBm+8zG2Ev
	 hIYptenumGP6IJKw7HmlOQ+jI8s0JdamVwjat1YSDW2GZ9lLQK8V4xm21kqXEp3qY7
	 0zaVs5qi8MxTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63BC1C4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 06:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167082788739.14553.11430428955056561214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f3e9e8f26c7908cad1e824bcd0b07c891ff7fdda9fcd66b7094c8f9b6a8266e
Date: Mon, 12 Dec 2022 06:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670827887
