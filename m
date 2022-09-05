Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6F843C35
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 08:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 64EB2C433D6
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 08:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662367853;
	bh=W97/3bYOTa21cdt6pLlZJSmsozdST8bNNFF4VhgSYWs=;
	h=To:Subject:From:Date:From;
	b=SCTJ7gP7MqW0sFJbGVui5m+H3ZPtfZPci+rNdGo6OUgwBa0DgdCHLBZFrqaOFTY1b
	 xdPgHgeyyuobsAjaCJWPNXtSHjkqBUlijuDEBgSTEuq08HBiDYBseEbGNreQ7bGPol
	 +Fz31tqcv8TPIMmfjywk+Y+0p78T564NshKvBNhDNWxFa2rpG4Sk9oQaCEbU9tZH/k
	 avq3L/4dgPkVgeSpGbwyOLAozB9sxm8LHCTsh8Mgbbxuk6P+FqgsZONUqW+/T6QlSw
	 aBxP1lzf8B1g+SrpHZ1LycxxydZhzZIasm2S3O0KoCh+hJYNQ91XIBcIzhF/19M2oU
	 2mkZbAp7DeVAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E969ECAAD5
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 08:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166236785331.28248.14642726126951374828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bd3d29299065a8417c62f2ed6a3d5fef476a0a55053dfedb904dc74ec3f4830
Date: Mon, 05 Sep 2022 08:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662367853
