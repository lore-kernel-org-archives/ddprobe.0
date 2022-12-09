Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D84E73FDF
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 16:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8527EC433D2
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 16:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670604087;
	bh=z8fnYg6zyY/+ioKHzE70mopTjhqdA3I43yrU6se30sA=;
	h=To:Subject:From:Date:From;
	b=GF+CGA1KG8X8Bk6gpjRRxEw28qzp0Imz0Fa+V2/HpdHXu3x5JA2y1B/vNqTNZPKc3
	 vBOWJKEyEWC3zMxzurOj/sbKRZYCJrG3/DPQ7N8B+SCPNa/6sN2NNRcBXsJrOxLgmt
	 86fTtulfeBsy0G9ri0i7PZ4ssgIyWZGUfmr7pJ7NbyjtHp0DJTw7gIy6xEcW9to63C
	 dOH4VPvDLabty8CROg55TMKywYFH+4e2m3JzHqP9Ph4pXPIbU+Dd8cYN0hY7di4gvS
	 0xQxgJlA3zdBrWB+Ki/ruyxfH6DxTKWB5RqAx9oNq2bCH2H06/UKMRbN7NyDPVZWXM
	 d3/coeYVTsH5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6875BC4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 16:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167060408742.2806.14201815978818338623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f138fac3757c91eda49b8b5d281b555a5e0d6a6f2a40becd276c2a2b6538974
Date: Fri, 09 Dec 2022 16:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670604087
