Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB7C610F4
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 02:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AjF1vGk2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80965C433C8
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 02:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699411096;
	bh=8kQ3/w0LTChhXl1NM6ihJTfJm0LwsiV1u1O4ZCQaQh8=;
	h=To:Subject:From:Date:From;
	b=AjF1vGk2e6M2Z+6xLX45ngBkUv3I1/diwYGWIFM9IW/MXTkfC4DRMxGlqvTq+csXg
	 4PljeJw2msTSzyTOELv4Gkh38NtP9V+xYlPRwR4Jd56U0r0Hu+EUa6675pOitLg8JT
	 TmU8P3pLLAm7i2Rw7G5hrrzMOE34OTeWQznFVcORXcJtsL0uUmCIW5KXx5M3BgU9OQ
	 FmPgPKORly4mhHDQQ1sl1pnKvTrjzSNThZnLmB/L0aMjGXlpfgOQ3m3RsGyll5V3Oj
	 8mJ1Uu9C8sR34FvDggD6iDbEV0fEm7DXZfVL+0M8URnv4HH3LpoRwkU0H4S9VuO5H1
	 dx2Hk5yNMPtWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67CA7C4332F
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 02:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169941109641.5849.5165247376055397987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81b441fa5b3a999ee439bf0e4bb47d85078a370f762934da3961e6d78fe5ff4a
Date: Wed, 08 Nov 2023 02:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699411096
