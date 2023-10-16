Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 681C5273EB
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 17:07:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VZvPriOk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD3FBC433C7
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 17:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697476028;
	bh=++fzdVeSj1r/9+kiyGUHiuYjRIK010sPeFGOl0A9aPs=;
	h=To:Subject:From:Date:From;
	b=VZvPriOka2buNE2cAlPwqeuUehvpC0r4nRBgc8KXLrNUOcpshFcCbXH9pPq8FOX6z
	 lz/h+/+iJ9nS1gVAEPDznHN12O4iIRffjMQGfIQ2n3qfRPknnhzzolQsQXYH2cJmES
	 WOlMzDvGaJK5gs+d9rAPGmNtw+PEi71dfL3BY895Rf0YeA/lhFnba0sH9Tw8EiQBE6
	 8X2kqwt+B/fjInd6KKGt3n5V5UT98qH7odDC0fF0vDS/RhQfOK2eMY8cjCk2GZS21k
	 FQ8EFRmPKmytkO2nQyCChF1amyR3JcsxNN/w+tV3XLeK7L6PBxHYZcjr8wwlu9PjVU
	 +m+xNSe4Ipz2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B43E2CDB465
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 17:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169747602872.2703.6624062034943959866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afeab6bb08a05a7b34af7ea3fa11f4a3c3b685f79814facd4993aed7714f554b
Date: Mon, 16 Oct 2023 17:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697476028
