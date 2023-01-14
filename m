Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D86A380A
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 13:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A566C433EF
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 13:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673702487;
	bh=9J/mURXm4TtEqKcFCrITwOB1D6d30PKxOHWa8xvJTxQ=;
	h=To:Subject:From:Date:From;
	b=YL+MW1s3BCE6nzvM5aRyoRJ0/rCHDOpG7lvtIbsfk5r1ngb5zULxDxtl84B9gLLgu
	 iSU9CSP0AwzYUybrC2rU6HVCRXSoPtsZi2+sxYCZ2ADI7IYb6/Imr37jfu94gLGg/1
	 dw+LrokccCZB/ji6AwPna2II99TWjAV1toUkPtjuGlmyyDgV0W6rngZ/KEu9+qKojg
	 IZdGS+l//8KWQ0PlvTDJmtCASNehkoTf/3k/cpYZXSSRmhF8XBVg4YQteVj7WRK/OQ
	 Shp21fa1pagvprFXiuoWbAKFFtoh1QVf2y7iwG0O0rqYxHYwPPKWyUZX8VutNAcW7H
	 WsxuRivZf0QZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6EEF8C3DA78
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 13:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167370248740.26309.15104791330102702737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b82e1f822d897b76d5c978f6db23ad9137c8cc006c504db25c855c752f827820
Date: Sat, 14 Jan 2023 13:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673702487
