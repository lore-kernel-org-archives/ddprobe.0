Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1EB0372
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 07:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BE4EC433C1
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 07:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665817853;
	bh=05oKY5K3FhvUV+x4pb3My3Na0L58uMV1N13phmc0bvo=;
	h=To:Subject:From:Date:From;
	b=aXcIKxWAkN+/wnj39kivRGaVzdQm0NN8yYQvgyJgDbxBIy7Cn5xjbG79IKzaNUHZc
	 Iy1bwCiDrXK+lkUMLQr0+pSE4oegqt9EA20Y+Rjix5dzSimr12XDG0Ko+TYrzdI3ZC
	 F9YYMZ/V4lowWYbFcmWMXJh+GkrBeBynGojwUUPtafwHqNgDa5OgO27+rGXAucIAbr
	 tMZVLzO5Zvpw/hmNd9IEQ0an+2BNUFLz7XHOZfwK47NAUX/Hu2cPyREUzPYPGThN/Z
	 +NjUpWKr8HkJ7ijMQ/L/0Wry+ztOuGQDVj5Jr4SeiswrJlfcigFwl/yBJwBZqoRt1n
	 PrCTf7kHwhf9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F8E6C433FE
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 07:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166581785331.9500.6793547318964088225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb557920714b2e746b393fbc53b1bed4060804a8541e48f9bd50bde1da003ae2
Date: Sat, 15 Oct 2022 07:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665817853
