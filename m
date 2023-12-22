Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B21B4FBE4
	for <ddprobe@lists.linux.dev>; Fri, 22 Dec 2023 09:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qAZP1cL1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85988C433C7
	for <ddprobe@lists.linux.dev>; Fri, 22 Dec 2023 09:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703239096;
	bh=LTMkcjq/Uhgjf1/3ji3WAOKDyi0PVw2smzPb7NusFaE=;
	h=To:Subject:From:Date:From;
	b=qAZP1cL1d/Plx1V3uVhxiobF4Qym7B3Wxe/5OyGF/88wlAq6pe1hNvTMKQe1CzqWl
	 4GqjijeoydfcmDfbCoVA5Giu99JSUxGM6tBWF9TN1P6iTWr+GzP9hoTy8x2FFM9xFm
	 TDEaWpmBJ/DqytEoK0Nv3PuEME36O2W9TgYM/DqYGyPYa4Vh0dv2WBAd+3fWReQy8G
	 LsHLHBOCWds0Ynm9xHQzaVpD6q7vR6TpbNGbbBAH8+Om/VJqFPkedDSia+zjAZYFwt
	 vy1jQru5Y5Z+nSTxJ20xClfJoaUT1UD1WEPYYLTAzbnEBaEIs9c7kGkAyLUznorgyk
	 cDnlGVaBSzi2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A406C41535
	for <ddprobe@lists.linux.dev>; Fri, 22 Dec 2023 09:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170323909642.1472.11613051759784619838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae9d2e225fb6bf5c95550c8778cf1e1ab4eda5a0ba11db3851243a9b49022a9e
Date: Fri, 22 Dec 2023 09:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703239096
