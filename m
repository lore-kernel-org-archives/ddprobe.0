Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DBF23B2B9
	for <ddprobe@lists.linux.dev>; Thu,  5 Oct 2023 21:17:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="luQ5NZGA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E14CBC433C7
	for <ddprobe@lists.linux.dev>; Thu,  5 Oct 2023 21:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696540628;
	bh=4DWVGdAivlDjt0my4pJ5qS2bx5kEML8ja46VARLoRVg=;
	h=To:Subject:From:Date:From;
	b=luQ5NZGAZxXOnfLaUFH7bAiqaQg+Y3akm5vkxqxeBB9agO5pSp0qL7BKwma5jFp5Y
	 rNV2rXdf3Oti3iI00m3CT5wVwH41M/cRZ0b1X3gELOOy0p25eSMb3H18ilgtMzZG1K
	 8ShM5Sa97lUzdTQu7zujmrOb43noY59cq6RoITcHWxhUyREDI2Hpg6RStqGiykk5kg
	 yZDoI7mM2O2cbzds/VfW/n73oiByL9pV7N/Vza2rqjA5mwYupnYYeJ9ul9MO8Gs7E5
	 PWtMCJRYTyXUFB0YW0KGkt4q919rQ378yc+lR3X7wzW7DOLMYuy4kAaPBBk2Psb0hn
	 7z3fEaiReHkAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE05FE92FC0
	for <ddprobe@lists.linux.dev>; Thu,  5 Oct 2023 21:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169654062876.27979.4360911205227030677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42fa7bfed8933d4e0d0e3aa56d1da7b25f1511fde2c7aca6f65d675b64985087
Date: Thu, 05 Oct 2023 21:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696540628
