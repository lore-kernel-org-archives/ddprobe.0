Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B72077E
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 04:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CC68C433D7
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 04:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664164853;
	bh=Cby+OH2dr5FxN/eIGSCfk9S4cZr0n4T7q2dyhUX313w=;
	h=To:Subject:From:Date:From;
	b=erLOgVlVOw4JhVP5ZVtKe7tqKTji3E8pemm9cL2LPLxnaD+vi8QOc7pu+hFOE8Hid
	 kr97cxE+TVuHrEO1WFi2saDiPSdww3Ft2AP7CNXzvr7jPHIgwL/BGowGh9UYPZRFIz
	 xzlLfjNr66sEKCxwEp+ENokSGx+Jk37zJylRn10MXOXwY1ruf0Sck5CCg8aj3nrPu8
	 1eGGl018j6TO6bhUpJN9ICC9LiDw/W4H/UpUz3BVYKVXhTMmc/eE9oJOWNJ20X6EU+
	 3IbQfKMTuwwTjdy4C7+/m1YaAAuHQi/xjXlRCCg9+w0PpQpD6bHdhayBamjAtE/q0M
	 McF764wy7vgcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53813C32771
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 04:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166416485333.16427.2457717074113106964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dee5123d3def78489acce14a388f9cc08aed03cbcef0bc95a186188cb592873b
Date: Mon, 26 Sep 2022 04:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664164853
