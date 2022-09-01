Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B977FA3B
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 07:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B3ECC433D6
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 07:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662018653;
	bh=+wiAxWRZ9Uwz+hoeUSWKebsiQSmm7N4l/5t4han0TlQ=;
	h=To:Subject:From:Date:From;
	b=WhWGwf3kuFEmsvOIemo9Ov8ZaMfqXR4Du+muWCLjHjKWRSOP67MuMY4Tf11ChsE8w
	 OtKb6POIJm6AKRtg4Glrk7VgU04BX4gqOb0ZuLzeAP9V0w+3xOuvZ/6M358oiLruTr
	 7Ep7rEmdCNcFMfzVkQjDr9rmNKwjgpj1emoxWaYY8H0faSZO+XmKHU4mLgF3MojRiI
	 i5C7y+35iygOAH4MWPscJ/SH/vku6CTZAu7Q/Jve6PY0Wqz/N5wvFBHh/5Rfb0eOAh
	 JgpVvVCa5nXA3A/3jc81CTo+SthpV4ZcEKRE8rtNFEnT03PUEk952W1B7rS2aBaFPO
	 FvHeOLD3HaNYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52CF2ECAAD3
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 07:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166201865333.3139.8119906069425866749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5e0719d0699c85d4fae1420d7763faf77e3920f93e53fbec418195aa7ebdafe
Date: Thu, 01 Sep 2022 07:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662018653
