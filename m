Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4111EA944
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 07:34:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE856C4339B
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 07:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685518445;
	bh=sJ/tHd2tiT1y38fgVufDuNIETGz1b2aIC+zFy5sNxaI=;
	h=To:Subject:From:Date:From;
	b=nDlKSHT6Q9uKXz6UjiFKZqpbeG/a0IGH9SX5noA9YvevOm5kHh7ZySEl5JKrT17T8
	 9nLYl+n2KlFR13qVf6tDYMcaMKqBAWB9alj1MbLpFyptoYqfTZzXrjaM2Yj8hXgMph
	 rg39lwhbPrw44JG/DZc2Rtat0U112MGsGZqaUsgIhvaSCfPHhqbV76ikh9+vcXLsPs
	 JiWp8YGIHS2zCInmOgzMty4A1zZNGaSNwBE0Lc9o577RqXRGEOMUdDfpsoi0gEkru7
	 YlAzXLzoPoILTSBK2FmURNFtIHkxuU5puihwYJ8S5TJ/2AH2B5cy2O4V3AXluF5j6X
	 WveyW7cbwBfHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2445C77B73
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 07:34:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168551844578.17139.2674442626293053345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a35c0c6d8d443db82bc0235fc6619cf47a02bf4af65ff06414f8d9c0b5e4a23
Date: Wed, 31 May 2023 07:34:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685518445
