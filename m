Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A8CB7B
	for <ddprobe@lists.linux.dev>; Sun,  5 Feb 2023 14:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D562CC433EF
	for <ddprobe@lists.linux.dev>; Sun,  5 Feb 2023 14:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675607765;
	bh=iEffwSHlHWQAzWywCSYi0y+1/kSdOgGgxkmxuDw6nsQ=;
	h=To:Subject:From:Date:From;
	b=EEWe2c7uctbE4uWMfuz1DxemYYmlQiaTS6oUNPUS8NioZsvhyE0G+0mRu94MKkasB
	 2wm+Ab7bDGp1RX6l+HK79ynj6CBMJVF9R7tRIYC2aLthBdN/8phg2DlLBEjuOSVou7
	 tfjz53uNNaNbpH9BB9MSxOaw5I52c23lQjEnW0S8i85okFCtSUVp6g8v/ndv/4AdyV
	 yEdiywZjmJtPuTRlF/dZveWAIUtyb4qSFdkoHxIvxlYPeByXaOsd30XlFMEZc83DjZ
	 siZkRuD139kreWhDDZVUaj+fFUo+IRGJ0OiYB3+u07I5TVZVpzdmcvlADDZA6WEjuB
	 4QV/P35JmPpHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB6D0C636CD
	for <ddprobe@lists.linux.dev>; Sun,  5 Feb 2023 14:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167560776573.3574.13690354928068905622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2ea9433407c38a5873f31115670ec2667a160dec7b9f23cd7132d2ea4a02d4e
Date: Sun, 05 Feb 2023 14:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675607765
