Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCB0710E5
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 01:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80CCFC433F0
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 01:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673053287;
	bh=mEZ++jtBXvp8Z6HoplIbYjF7NKKf6z5VPi2ZF0WdZjY=;
	h=To:Subject:From:Date:From;
	b=jRORFP+3ugDK3giMTOtf8hkP6Y84lFdMzEcs0DU/w7YT1uH8uYjklWI3vRzkk3Y63
	 NGqZash7KJxw6w6n9Lov4o65nRegQ0A89zTBNervRSnROPJor0jCjaS+wPES/8adFt
	 xpIE5iqDw805Hwo3jSHCTF5QbJ+8rn72b6Pv55wyPRiBpi1RUT6V5FiW8tUsyDKvi9
	 tq/C9KnxSWxXhLZ9OUIS5n1JUgPTceqydElUr8fPDudu69pu473YsnXVa0EoI//jCI
	 GQVvjDOg90fOxoAr1HDFPmz/Yn+XJiUdSk1tVNLqUSMpIzS65M3EuaRmljl81+IQ13
	 Cw8XHADxM/6LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60345C5479D
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 01:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167305328738.6831.12832376252530722560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 462a47ba82886fac5275d973349fa0e217ca1cd401ad13a4df95ff32de49f2a9
Date: Sat, 07 Jan 2023 01:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673053287
