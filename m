Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4E0CA492
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 21:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B853C433D6
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 21:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668808254;
	bh=eR7A1ffkMd7CmYVtRFd2PRcmf7UUfAvumkfuW5MCj1k=;
	h=To:Subject:From:Date:From;
	b=CBG4YvVNPiMAISPhQnUEnOsE1XKY9VWJ2mNlKD5Lid1bQiic7cxIq1tAeWUngd8+W
	 WNNufBEtu+SivsDbbn3yOSUgkTkwvx0HKGXOKA47M9MDYHN2UyUAqpdrasdulMueE+
	 VH6eld3BliCsg5wdSPch0sq0KA7xUgR/k6Uz5O6nPX/2HHbGO3FlDT+oaH+cyEBzZ4
	 mG5XsBw5F6vlVcT8wMmQwCNgiOW5a9WPhjnUxwx9A/b5a9hjnan2dDV1YjlX74L37s
	 n5F2SVPAqa7c3m3P4gwZsNpVZVZoE72VwCMudydXe1Yh/pn6a34xiiBRw4mB0skaaQ
	 ykK0o/yEFchKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52259C4332F
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 21:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166880825431.8424.10963359398967892904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0c47b3212211978e89d67459724d45b88bebf7a3ae387374dba40be87163e04
Date: Fri, 18 Nov 2022 21:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668808254
