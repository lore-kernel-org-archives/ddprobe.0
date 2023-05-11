Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EF30206B0
	for <ddprobe@lists.linux.dev>; Thu, 11 May 2023 20:24:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2125AC433EF
	for <ddprobe@lists.linux.dev>; Thu, 11 May 2023 20:24:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683836646;
	bh=4sBp31uOqdzdXKXzUsvHKNpZmzWuQxEsiqzFuMOdClQ=;
	h=To:Subject:From:Date:From;
	b=AernlX4aohnQe2HdqXEPtbAvPTd0Tkj4qgZ/fWzmkKxx6p4VoKovsXBTc7NAMzt9a
	 pH5WbIhacgiRcSX/yMjSvYBO1xLTlR0/BeiANwfODkmz8oQLoRd2Yv6SCM+tUrNmzc
	 HovvZ2+RDjtZcf2KKz8TiBjZHrn0pdtJNDZ7L0K/IqV589X8L655fwVcKCXPKsvyOh
	 xDw0TEhz8IMaQ+28gUrhYq4J0aCrg9TP2Vy9IBFMBSix9kHj0mXbnGJGZDL0oj1vYl
	 7mth0claoSgPuzJv1c7bFZ2EisRQ6xC0DEv14Xf4Q5H0ad+8+jCPqNhWtSfimz9K2r
	 KqDq5SA2b1izw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EDBA9C77B7C
	for <ddprobe@lists.linux.dev>; Thu, 11 May 2023 20:24:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168383664588.20470.2298761322724592738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00d7f0fd2e3ba67c431fc313ea7dcf56ab6219710fb23d87a9593e9a6db243ab
Date: Thu, 11 May 2023 20:24:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683836645
