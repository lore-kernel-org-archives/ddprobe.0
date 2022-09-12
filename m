Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA3292F2A
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 15:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 765DBC433C1
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 15:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662997253;
	bh=QpfQvlrGaCJREwMGXBRfioSk69NR8HW/VSVVoHkMuXE=;
	h=To:Subject:From:Date:From;
	b=ttSkOCBAubD3mTdcfWhorT4++7EB+6S2nYzmQbpSDBWn5m9gonNrOcxN5CrfHkKyr
	 ignzigHtK2NhpewdZ1jtNYqmZXF8cEGB2MA/jjktX8O283YtHT5Q1RYbS85LxwqEbc
	 /Ur4WITZBgimZoiyIii4n99gwRrXP02J+5pTeSDflMVvr2/0c3pYNDkEzLA+IrjJHk
	 r3t99WTlJmenHBJNJYYFPxg02j5z455yonghtjlQEBERAY3HH9XTPBAicJW6O+xX5q
	 yV1p5P8gDq98EQS2tY86wdHnvJ3kzSLsyUinNREZ7NYVElMPTEp9X9jH1kwQEexJwz
	 0AFUmZC/0oJuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5600FC6FA83
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 15:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166299725334.23596.12340053760881816576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b373c94655feac5257a146b2d2c74a3b4c01c54504c33d757af2f06d51176bc
Date: Mon, 12 Sep 2022 15:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662997253
