Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D46207C
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 15:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70AAFC433D6
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 15:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663429853;
	bh=h+TBuwnHRnuKjN/h90HXU3D4zdYBBjyTy7AtLXKmIeo=;
	h=To:Subject:From:Date:From;
	b=g+m74aaSi9G1Gi4IROoBADy6Jp4CLb+QqRiQQ1odxi/MZUbCNZVRcPi3itDnU0SN9
	 u07yrmdbMxjU221Yr7IQ1N1vpMf9hKSwUtlBZ+S3k8EOUFBW8Tw2u8R104Ko/jmJE3
	 0VLsoyHxdEjdrJPXMbJrmhkrpciHQWRtUocCo69jzo/rao5vuorU+Sx0AuQ4GiFv5w
	 neFZB2/faYk/gR2rH2XMw1/LuWU4TD9RhCa2nHKTa5weVCmoKV7RIM+96maiJmASAm
	 RT/7GWeHY8KC1sfym4sq3XoAMR9feclkncNHk04txDIB12QhnIaMB2pDPxZiRwDt8I
	 9VUY0DBQ4v94w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 537AFECAAD3
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 15:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166342985333.2510.11157578100396615718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efade96866d3dc776b4597298b9ae2f9f2570258dba82277665908c2000e891f
Date: Sat, 17 Sep 2022 15:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663429853
