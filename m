Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1C5B80C
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 12:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80D85C433D2
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 12:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672058487;
	bh=OOQdVPzgFIQA7ZmrEz5nXw4CsNuKR2iS5PjR5gfeRBI=;
	h=To:Subject:From:Date:From;
	b=pFeEYCtTWNU4ZL2IWWe81tK1dH3smFNm3Ty9+AScI9hx7uiDc0IUsYYqbQYr4LO1+
	 EBWNEFOLXAXQGnTS2eLWSvgRV2DTaSLN1lGS7XnPZR/lRPOtXA9Q60ql/PKMXjGKxy
	 CSXq5tplyTTLlhrVm73VLqKrlgdkSgBdykCof8/BxrvLl84iC2p5VeQokYnAlQ2LCw
	 cv1nFsiXtk6Kmo01Jib59zr3O6Qw1wnWh8U/Cxal+sSpzztCX6+jrKMoCr8dgfrP+d
	 9wYFiU6jiCvsqSnX9jL4t1bj2N66f4SHsZetWpzQFx17QqU9OULcZoUzvRicqWJYiD
	 buUbC34e5h9Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67629C3DA79
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 12:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167205848741.17525.16600948230527168645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75ebe20b3e3bfbb09096d0f2dc0281c0d3b7dfc7e33503a4218c59dbaa8d7c34
Date: Mon, 26 Dec 2022 12:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672058487
