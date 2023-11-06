Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17D4B2C859
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 21:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PXV5vc7k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 781CAC433C8
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 21:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699305496;
	bh=uvQop8xWV0tfU2B5c5T0lIciX6Xv6MqJSBiSpjmJjys=;
	h=To:Subject:From:Date:From;
	b=PXV5vc7kp2/ZCtBz/uSv/Md3SA8S84WlB0O11eG3woEAYk4iWTxldQGsc2qkdCBJ2
	 hxrNeNedDjiASZ2wfjBwsywYBqTfBtOZzENfEm80e41JiHhXnYOCeDiu0pd4HTg0fJ
	 qcsc63PSyKfG3Hs8O3N8pWL0jYzuCTXflBs5lyKQYAdtaeiqKOeRFw1vKutkNsvEu5
	 lUiBFzjwGVd3LHzXx7Zi9/lCt4MjXPIS+TeM6XXTTg55vU8CMhxH+tSYHpCpKsNyrl
	 K+hNMLkxTwug+yPRN1GBZi3TA3sMkkzXzXaesUxiK5DIaaOEiEI/d6qtWxqUQZAIkH
	 dAzRV1twSzywQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6190BC4332F
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 21:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169930549639.3404.3110209774914652657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8066d05b17710a31911c3e6da9265f02d8f4dc1a609d5e9d0ccd7f44a6dd7cdc
Date: Mon, 06 Nov 2023 21:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699305496
