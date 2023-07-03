Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332F6F9C6
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 13:26:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C000FC433C7
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 13:26:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688390768;
	bh=YIk9C8b3YPcJadodqNV4QjequQPujFHpv/h9V65vp0A=;
	h=To:Subject:From:Date:From;
	b=EKhq1Xsl0L++gZCreAy9TQC0NNj4USlA58kqAtiwehgdmWZVu6d01b6meaZz6uKvo
	 MIqxoitgMa9OBippkpYtt0bOv4usT5DoAfO6CkqO4Gh/sRhhcg3W1H1nEj0B3vtiOe
	 q0ikkbKyFY9Vv5H+BgJu6R9rkQO0YNFJdmRl2sllWcujmxIaMcccfVoSHbagVVyB9K
	 ZRH6nDxP7Gizs8tDeElsy9/czqUmuCapykoNwDV44AaZ38op8zuz3Rj3DKZvuugQ5v
	 aHiHC4shMQLVevY6ND0HPS0loQmXuoiJixahmTYIIpqdj6btzRLoUMYBJPWM5zcqJO
	 d4+jAGdx51hFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7DCEC001B1
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 13:26:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168839076868.15228.4048584438336250501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b33d54e06a55732936ee89bdfce80d422ca7642c350364f3da8fcbd04c865347
Date: Mon, 03 Jul 2023 13:26:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688390768
