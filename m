Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDCDE620
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 01:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73548C433C1
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 01:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666575653;
	bh=L7H5dn8gilTZKP7/WuhGhfRJGX7PD1ldq7a3UXG9HvU=;
	h=To:Subject:From:Date:From;
	b=aVacCZmaakQzWfWqKGbYkraBKtl2eCEVcHblXjwRGPG6w4RXhyiQz+D/JQPsKf1Bx
	 ZE/WPAO9a0cUmg2AJMkXoMhDRcPTKN6IFNYB2+bBT4GGYLODkPvmcJDzQeh0TB5n2v
	 8AvWqOEK9tqEgcFpEJqVyceKbAldSpmPyOhMo9oN/rl6jBMnmmNVnIahfVdA/H1r9Q
	 ZyiZSKNV0hTh91+kGbPBW0suzPTqNOWMUNvd2rVjLBD/197eORQfuRK8ni7sCIrDxU
	 M14vUg08bB0kQZspZv/1y+KjM3NIlJw8FW4bcmiWLf5TUJnII8TEK/0aFU1C2AMN9R
	 QCH/alkF7nh/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56AABC3A59D
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 01:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166657565334.13657.5295969561908065987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 256514713f5ef6cab991d32f7463f23cd81ebf138829e83c5c10be11ba0198cc
Date: Mon, 24 Oct 2022 01:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666575653
