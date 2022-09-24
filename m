Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2EEC7F
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 07:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 64062C433B5
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 07:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664003453;
	bh=ptlmGvxS+bQLQymzBoD95E7sLV1Xh41U/QSgVWBVoEU=;
	h=To:Subject:From:Date:From;
	b=XekxosdK4KsFJLfhCrB+0/SQYorl+sj7L3iQLhQjtO1+IxGq6+0yYfPKwVXen40DZ
	 F1ygHOjeexSRkpw3NnXLJj60UbKmfFUh+DP87Z8kQl8wzNZ4FxiYR0gufPHTboW7wR
	 /45QpjvmptpJyvsWRW7l8INtK0TidZUaVWjETqiVPkm4YADsriJ8oS72c4dVWFUSs8
	 Gd1CR0xuVCFYyGpiv+LQCnYTvXpTcBFgw+BMugFnxnimrwgldA+eWvgvm4DMhvHU55
	 WVHRfSsbMekuuSncrN33mV+nd9o0j2e/ADzn8je+s9D/Ok+hCAdzOIebiEhNLZGnTK
	 QUndD08MF4zXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E597C32771
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 07:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166400345331.26881.9550175429582798417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8286ccf5823dec8a9bfafe5344f70a338552185c16909884a3d4618524da91ad
Date: Sat, 24 Sep 2022 07:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664003453
