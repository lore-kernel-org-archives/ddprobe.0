Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D54D6625
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 08:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D9E1C433C1
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 08:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668069654;
	bh=D6Tasp7Czx12CbRyzg3V0PqKrt/QOwBRG9HTuPEokFw=;
	h=To:Subject:From:Date:From;
	b=DqZXdX09FzEPA4r4Qoh5yadrrTL02Q/qasuOK3NHyOd21G5mCR+GWZar2+w1lh8dC
	 hisnac1tejbiMQk3ze9u3kWLAySzOGOsqCPD7QDii3VnIi0t/3eDYv2cmf5+BPEz8o
	 rbqR5pZM7eEviJRDT0eHP6ACbexr8sk66I+J91T8KKauu12yo5RP3LA9sJgTzyUoWZ
	 Ji81tKwq8YbsIT62gpUZFsqjHJzehCF5Sk8CHq2qQxDUJTkjN/hxoTGXEr7oz2fZqo
	 xj/yPf07M07zOv3FzLokPDQbx/rEkhEICo+LBRT2hX3Z7Yf6O77qJTJaftFKER1F1V
	 Ryi4IHd1BXGhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 600EEC433FE
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 08:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166806965437.23429.7959898932008404926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d02bda07d6ff11fa87f7a700d2ff2936c914ee9fec4c2fcb2cb1434cce539a8d
Date: Thu, 10 Nov 2022 08:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668069654
