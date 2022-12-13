Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C59F815AC
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 03:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 819D4C433D2
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 03:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670901687;
	bh=gna/ELdmYvl9AKmC/6UMWvlSIR4YNmbgL9lUVNnu+lE=;
	h=To:Subject:From:Date:From;
	b=A/moWusxwolzn5HzO5eMqihYlSjSAg/O+a3eqZlz1cjWI3SQhxou5DSJgQ5qS/Elz
	 HW6pXVlO8mJTZrOy/8hPuG/0dZ8oxToMKoyhRTYwShWY2UO4qCRAOhA0/8A5DBS/q3
	 wI89pZbUEyHQTJ9trHqpzYGqWBxS8AI3OyEzZhetfug2OCIR4rtmT4gtKO+1qSHCbB
	 ggaPBcyAnUm8ij+xsb47afz1gC5RNGwok230zVfNI+7qOLfr6rCespvI6q3VPBM8LQ
	 2fQucbcg52/LOw8v2yV3vZN8eoFahdFmPNJQurDoDcqHwu047cA8JBrf299L8rcDjS
	 eMAEB24NeZI9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 649B3C4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 03:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167090168740.5686.15608678505628640781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1727841024462aca8ac8af9d1f6741618da7ecabc3ebaec3f2551326d7e5f74d
Date: Tue, 13 Dec 2022 03:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670901687
