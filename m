Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66887257B
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 08:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7E4FC433EF
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 08:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685779685;
	bh=NrnPcRYIt4HoifRy73Y9ee4mgB4q0PFWtlvnzImdhdU=;
	h=To:Subject:From:Date:From;
	b=WOVtHwsY3LF4IkiY+Vx4SYqix1p9PHL78fDjD8b+uhtUtpKTXg+Qropln8i87MqaO
	 PzhLNTwm/Ziq1zPlbSfR7wHQAGC8yyJI+ouNK/y8R0FoYJTPCQhbvysrxlppt1sTZ5
	 qmIdWtgb0TlsKfTLJfqIDfzdpsYZ58YR4q4XFZD9eQIWj5yg/ipHOPTIjQOfWh7uEI
	 oE0RZOv4HpoZNdGcYgHfeVTeXvXTFQrzNsd8eDOQddfzWdkkXyJ6/LTjbU6Qw7elhP
	 Wmwt706gKWZ4iXVh2AYKxKzvRM3lT7E0Vvf3+vYgkOIo4nnFZH2diPVhjlpgSDsLlY
	 nTdgqHTx7/b1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B91ADC7EE24
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 08:08:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168577968575.3329.8840238669922053690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e12282c591ca004fd79530c413c0f91e73f0e286dc0bb6e7d726b1cb524c4c19
Date: Sat, 03 Jun 2023 08:08:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685779685
