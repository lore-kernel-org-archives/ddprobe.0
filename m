Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAA287B
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 00:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7903FC433F0
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 00:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674003087;
	bh=dXFtC7+ZNm9gvj1ACN1EfI9FYaq2zp1R68p5IcaxlN8=;
	h=To:Subject:From:Date:From;
	b=WNWEPVHdZcQXpH3KI5+rDHSptjLfzp5zLXnuWfVy1wZSZ8Jl7+vd+h2Dt/aPZ59r7
	 /XlLKsjjeHArekazINvSXFH8c4hU/y2gIDFj7buEm5WPOoslKJH10diebIz/4vgq31
	 PBZZ9Nyn/+chzQsN983xRv2TgoWaYa1ZiKOcTdT9vueuNX/ktJnkENG4qbyhDLiu8Q
	 SxVc7NNWw5BN+SFQp3CE2+Wnf/bIBn9wc0t/+h+jA1x8E5aNUIVLbojsP8hDc1lf9Y
	 PNiNW+mLCafwX0/5YwSILlPFc8in/uOOt/gmBsxDDC+h1mtvPm2o5UojXoukjV48aY
	 93hmk7lwW7K3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62E6AC38159
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 00:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167400308739.15234.8910027293774949309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6e596c62a8020d06baf3e86e854109487329b7a251849b60089609fd7299a60
Date: Wed, 18 Jan 2023 00:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674003087
