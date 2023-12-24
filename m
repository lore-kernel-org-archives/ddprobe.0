Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 090D0EEAC
	for <ddprobe@lists.linux.dev>; Sun, 24 Dec 2023 18:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZVeTCsAt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 821A2C433C7
	for <ddprobe@lists.linux.dev>; Sun, 24 Dec 2023 18:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703444296;
	bh=OCM31sEzXvX7JfgE1rH0Nb8MOwqvfaNGwUYmgAZeA9w=;
	h=To:Subject:From:Date:From;
	b=ZVeTCsAt7EbRuXRCHkzB/pN63Mo2dOiVGL8k/jHNX5F3Esc189/evyOTR0MiYgpu6
	 lAIPv9q6g31sX/iVTLbQYQpXPXawcxrCgZjq//vOgpBzcbe5xL7rJgEKyX1/3Aa1Z9
	 eEMAwYxUwtyFT+ZOYz+ecdTOghfgbmeD6IaA9p+yMZMX3wPm4Thkl2d73mMp4fb1rs
	 Hcxi3WgO+ajSvVkm3Cz2hC/ATsT3j5+OaTzu2PaGZQlFMYalz/2cKjEMJsgI91vUSX
	 kpyIU4/BmQXhood4ySNvc2NvYQORackh36eh0YvQrn56iFxq6sTS5ZqWjglWFu4pCc
	 d5tkD+64uGMDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63006C46CD2
	for <ddprobe@lists.linux.dev>; Sun, 24 Dec 2023 18:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170344429638.27589.12886148852834240304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7632f011fda75743aef5cef82c7f310bc0d2974f6ed6ebf0471d3cd50714c61d
Date: Sun, 24 Dec 2023 18:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703444296
