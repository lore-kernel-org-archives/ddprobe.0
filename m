Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12CC02FE09
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 21:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JqZI7dGs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F1B9C433C8
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 21:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697838496;
	bh=s8f7BvGXgq9RpC+aiYnjpHhgL4uOgBH/l8hPKRJFsUI=;
	h=To:Subject:From:Date:From;
	b=JqZI7dGsNQYM+g09FicpYDsPpeK+w5qAMCmPloltiJ2LHTPA/i2zu07aq+zilD5qW
	 t6PH5BHCUztatdnMaH/0jRFL7pgOFuqNcoXWGYicUGS13eXR5WCIjsm3yTPy0HUB2b
	 dgiYaufxSsrnkfS2YvJDLLNSQ3kHtnsLfDCYj6ij0J6CwE1ZyZgiR8aouj6tXSYaWl
	 Hkj/VdSVL73t5/QDvUZPkJCxSen0CunGxl878K0a1Q7i8RJsPfbIrPNZr0oC3ngKya
	 62kvfpbEPFfqNt8Rcb+3je6OQVzeYrVi16Yf4qkTn5nRDP9YgVILYrezDozhtkHMtk
	 v9/F7eBbnMHyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B202C001DF
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 21:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169783849642.28306.18016089380007204355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92508b6129652d3463d408b0dcaaa3c9f87f7c3611a4e79a2b532258509f9af3
Date: Fri, 20 Oct 2023 21:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697838496
