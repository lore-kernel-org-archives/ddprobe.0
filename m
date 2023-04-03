Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C2D7364
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 04:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0A068C433D2
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 04:36:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680496566;
	bh=iOaBs+xG5BcRZ1rB5CCaAo6OR91k1dHcZ2c5GNtt6UM=;
	h=To:Subject:From:Date:From;
	b=qgUzZRw8tTyvJ5XBWVCgW5Ey1S0rVTf6n04qKaNJzmj6Eke0fqoTjorxh2HEDXUYe
	 CgxOcyO8QYQr4rTmRGcQ8I5PxfMUadf7KC/6TPSuJNHxaR2iUFychpF0TwB//myrSc
	 mcZJOsoilk4CfIlVlza0LQKXiw6EwAYDBVMjqAaP8J61PsXipzFRoOpllnfWn3Rhej
	 8fw6TwsqTHZvGH7GbrrFaPhYxgNaW0J7S7i6whKENjIX2AyoW8ycfRgAsPOnXFDxnQ
	 nBCZbZpFx8SRZrH3ywCPhXr35lwjSJvh/dHuwMkiAa6NOHzwobkrUJ+ml2cGzOcJsx
	 4b5OUc3gw0YCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E640EC761A6
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 04:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168049656590.14611.7049041572796352281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bac84db99c5b6b02a1c9e72dd503405c8d1c4cd3025982fd09c05b79eab34c7b
Date: Mon, 03 Apr 2023 04:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680496565
