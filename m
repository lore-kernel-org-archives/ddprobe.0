Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12D3834546
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 19:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uve42qii"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86D22C433C7
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 19:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700507296;
	bh=xwjD6WCKGNMjD4eC0TuCIR4wTZxy6eUk4g//ra+sPXU=;
	h=To:Subject:From:Date:From;
	b=uve42qii5c0LOueb3ThvPNbHn84BirmUgjdBTTvgX8Mmtadx5vXwFcozrTBMsVxSB
	 bCI8x9HQ+ff99PyDRUwg6Y9ZXqu2ulFkzXlpoqxaLyXrFTls21GKFgjBqCl826/VwN
	 tVbZPn+CzeWBrrvVypK3R54s5giXwaRrvE/DnSQLqMaAqHV570R7OfmcrR6y5MmxN7
	 frt5aghx7P5s9l/QYigBv0SoIdfyxkI8nUtkG/OZ43Vcv36px/yE/VcqgWGsOdcRvN
	 njq07+RtVedOLcGCSrYE7OBvem3uRQfmxxDQKdyyrSnzC1WnKCFW1A+Bn5ZETZEK39
	 O7jaFQ7DUYXUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 665E0C197A0
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 19:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170050729641.2345.13836542332237751666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb07a09be52831aaf7b14b457bace7f374da349539cd91ad789b4e644a11bfe9
Date: Mon, 20 Nov 2023 19:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700507296
