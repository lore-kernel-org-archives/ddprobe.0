Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F5DD199
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 08:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD4E4C433D2
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 08:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674894785;
	bh=5FOHQE7QICIA4K8S+7y0MXS/EDquHGL0pcnVpKW55so=;
	h=To:Subject:From:Date:From;
	b=gwTMY25tkV+bJ7znzkVXCHxhqaRWk5lkV46UWkeHM45OhJBBHz7c7QRfFuapbKlzz
	 JWRNiK9M5e9r3k9gkEqkd96PuV+7A0H/mHMA/hqtWFLpo1TffbRd9kVBURbudLsJc4
	 +r7xht96L7OVB6raH0Xw4em/b2+g2DJzPh+g41eAXFBWFAqdHRCMcZo9cwpRMOUZ4P
	 JP/Gi2aSVqqnxNjpQecLzu+h162UxEe1qiwTX9KDH1ySJbsYCCd4hKtTiFTKY3pGUj
	 YwEbAZ86giEpiAlG8K1eR0KwfsDad8ZPDzQ2jFVz5T6JklqE82tmpaBICezBNpaHol
	 rGuWM/+kgzAmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4B64C27C76
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 08:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167489478573.1376.17669140149362583212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f1e2902e22eb905e44c2018bfe727fc9838f6a4c170a7b3ae7cae65996ac508
Date: Sat, 28 Jan 2023 08:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674894785
