Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA47110F3
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 08:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81DF0C433C1
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 08:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665217253;
	bh=kJC80aqrY19KXGFfzWaDHHeDIwi4X6eaSl5Q/6eUhBA=;
	h=To:Subject:From:Date:From;
	b=uapFjgakAvF603dxw49O6rXvODoXSnCOiBIoipmkB5sq0uCBq7hNzN9IiN7xGjaLa
	 VIAi4OLY+/hq2DUBWCEeGc7AYH0y5f2HrFUBklK8zcpPTYqaxMisjdozH/vyCNvgzZ
	 ropM7HhVtLR1GU+A1KlzlO/9kA7M5nLrIWrIFlNoSJNMqf+R0CUHqMBoune2cNkm33
	 BSCwnyMe2KA3UkgmmUvWHux/OW/tcE8wm391sHb/S42aGgGrzrBZOLXa/PP97xzJCt
	 NE6/mbJc6ui0/6XwLMM0vVAXqrr4+wwZv3fuCuWc1dnDM7Dw4U1x03yj8h2S5/lNzv
	 W6cBtSOZbBi0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61648C433FE
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 08:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166521725336.28251.4514895494500444142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28c2c2e8bc9a2aad2f9d2e7086742db1cc75e75b4da8f3f66d8db6143851a8f0
Date: Sat, 08 Oct 2022 08:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665217253
