Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9C8536D
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 04:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75000C433D7
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 04:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665723053;
	bh=pP8hr6g3e7z/VB64RtpbahDwcJDSQ9/wL3gpe6qrTX0=;
	h=To:Subject:From:Date:From;
	b=GLYp3qP05ZNNhWrVLiJQPhPNuB5pfLaC9lsr1eMhAOinsnk8zisq6N/uayChZhAk9
	 jeiVC0S1jn48cpkb6gQ4x5rigdJxzri+nMNiMWkS/yS9sVrLhx3hvqE7/IXH3z0TAH
	 BVOTNw5QsNVxABy8u7O01cG5I7X4alfHrSDVmtJzFfOtS3Lh5rzkx9i6mVBXHUDzFG
	 QJKC7TjhTmWYV22FXk7jpdJOcSAO6Xe8fjM0GzekNn5pe/OgmcojNEWn9E4QwBcbv6
	 e41MjkGsXXaEnrY4/mk0QD0V7zsLujWCuhxbtLXp9xHDrTGSIvJQqIeOhGpkrsZ+hC
	 qJP8LJsOW4osQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57A49C4332F
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 04:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166572305333.29697.16592984159970440281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62a68c5806f5ec99be1685e2716a1fa7faf4441c698b99e5ccf6bb1311aa2d4d
Date: Fri, 14 Oct 2022 04:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665723053
