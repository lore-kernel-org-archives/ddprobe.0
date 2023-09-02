Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74891A945
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 19:44:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB2E8C433C7
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 19:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693683848;
	bh=hK1osMjNONNagmvYzsHZYaxVRfMu6bTtSQPaISQ3bW8=;
	h=To:Subject:From:Date:From;
	b=YZm0Y5yXhCBk3wABXvIRrfLH32xLoZAGRvpA76ZaBP5UyanMowObHjQpEsrzsMwE7
	 6KkReA4gBXpexVahz2CD895lcmuIcxLgociOKjaiXgmsa6Kxp+Ya/Ykh2mzj7B9ir/
	 Z1jXZKaueyRpm8VEoO9tLpM5DJZ91L9b/FCJ0Mvc/ZJZXqvmWwmDN2fEeMP2PeCKKz
	 PqZqd9kmfglcbCG3GDxiKsfNCkhF81bIcTHTkjibpNFS9kjQ8v1HR6bjkpUmnE+/XG
	 u4jhuarAcGOBWf0Imf5qceNzJtAmmHcmjWrovm8eBoHjngsqbgiYEXV+oD9OuP9adn
	 FRlB9XL628+Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF535C001DB
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 19:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169368384871.1237.9278259806707765410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a3a768afd8202506d55dc6546608a3b0b79083b4bff26e4cd3735bffece0bf9
Date: Sat, 02 Sep 2023 19:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693683848
