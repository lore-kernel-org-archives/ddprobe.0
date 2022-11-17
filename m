Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B271B192
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 00:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71BC1C433C1
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 00:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668645054;
	bh=7DRD6J6TWjj+HYH1i+FAMGj6bbp1nNUoWOE4rpLd1JM=;
	h=To:Subject:From:Date:From;
	b=P3WJ6/4slxrgEY3LBJNdWSOISh+k8BRlLwrlFVuFMJDJl3mgKKqrUA0zdCRXcgLHS
	 j2neieoR8el4ZaFf8DRGu8XJwc3LVQpCUXRUACjd3vcwWuSCnIBlcjU3Eoo0lMKmQW
	 bW8KvxOw9z9lmFCThCruyRhp1hOh0+ALj/9UPAzB5d8Dlkkv2+NDE2Pq5wDzftV6kR
	 2Vcyq5c0qfLGhWpzR87uzR4au0OGkTWqULR2fxHIbcevk60x8G/s9fuKs5O17Dm9om
	 jKcSYOujQuL+m3s0ivcaNeonK3Y9ITcZczlrKdTsDaoimkKczGX7yaRn+JywIiBE10
	 L2AWFG3zPYb1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55175C433FE
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 00:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166864505434.19757.15225209764718021455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2356210335e40e1c27500687d1e105708d751993e1d512828e5c15204c9acfed
Date: Thu, 17 Nov 2022 00:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668645054
