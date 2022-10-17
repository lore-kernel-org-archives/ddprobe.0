Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF10D7E4
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 02:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73174C433D7
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 02:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665974453;
	bh=M3Zz3Jcse+45a537VThS7h1QVk9l+jmgg9GGqGcWtH0=;
	h=To:Subject:From:Date:From;
	b=DvQjm0aufEPlX4lMtOpBcDbut7FCCOWmnlxxcAGkrNm/2K4iELK9TMdPwNMYkqCT4
	 5+sAYkHMb/4N/TxAWK+yYXrfpa4xIhCG3tLqjlTLjQ2Uv/GwY89hbjh1PGAlu4Jqbb
	 UHUnZd/OeOyKh9elnxDbGNyUAqego4JgFO+RpnFvkRgLoY4/pX6DS27gG+Tagnj2I3
	 d/5HAj7R1X81i+SzX8vlFNHsWirMNNOu+lzzKgRxOxPRiIq84FHnN3PYqMxgaLYDdP
	 jQ2uaXntapnjX3kt3reiF+k99dzOCS5GixdFtQ2frGx7AL4NF6IO5rBIwnFI51Ks0G
	 1YQZz6QJREA9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59CA8C4332F
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 02:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166597445335.19800.3973728514644250023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a7260b45f8769e6b5284e30bdff3fa7d613476a6f64458b730de1751dbb14bf
Date: Mon, 17 Oct 2022 02:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665974453
