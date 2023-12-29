Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 126088F41
	for <ddprobe@lists.linux.dev>; Fri, 29 Dec 2023 03:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tO5t80vU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 946A9C433C7
	for <ddprobe@lists.linux.dev>; Fri, 29 Dec 2023 03:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703819296;
	bh=BuEhM/Mw1hEpAi93pi+pwSf0AIfuvwdM+GWHGE3n8cQ=;
	h=To:Subject:From:Date:From;
	b=tO5t80vUO0AZmPMyVvFw793BJi6J63Mn4Cz5n9om2CvHEEqGFVOuG+Ua1OJ+QP9xl
	 12JDhNI4DDafY3GoY/fYcswQVNI2dtD6IE0uIBxJR74JV0L1M/dtLezTABYc5HJkBu
	 B2AYEDqK9UdVThp9+uBRlCs+VN9ff5hmmcIeckT4DeVyqFl5AUQi26jo4SsJF8usA5
	 F4ak/LfyZcM5Zxnxs24qfU1ov0RLMMMsMVe4RwyRkgqgBNLcP7GERSDPdao0P98bLc
	 d6eYvvPxJa5wDtA+OmtFFItGFxXjj8eFgjR7VGJ8y4pUxmRRqvhi6qD/IIeyzdCiIm
	 n+xuK4KbMlgdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 786FDC3DA6E
	for <ddprobe@lists.linux.dev>; Fri, 29 Dec 2023 03:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170381929643.15025.11670861499915403452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b1b303474167f99a2b65b58b1e37a35ac546c7fee21350c3f53d20b2e5a138e
Date: Fri, 29 Dec 2023 03:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703819296
