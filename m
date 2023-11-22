Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E228BE5C
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 04:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PLvaBopQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 92656C433C8
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 04:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700626696;
	bh=u5PlhPwsRYLjPWagbBbwq7go6n+ooAbtDbcsxYvKg80=;
	h=To:Subject:From:Date:From;
	b=PLvaBopQJOxUrVY+qfAyM1uoREwFELxj7HfvaSFIeGAzscSE02CxUlZ4Y6b8fLbo3
	 F+quf4x/+Kb9pZcO3aHlpXL7z0J42VNtIIC9Vpw6q8sUwEEKpQg1VgqXPwzhGR1/kJ
	 Cq5OigISit8hnY9iQv9wsEfrWNZN+AG0yWIc3IMZdjqK2YaYp58fdELtzEJm0EGAGS
	 Ndq1y9/PvPaA0MuM2SSA48juaFzIBpbfJ7gqSCYHJrPiWdI4cpHA6V28spBPaqQ5p+
	 2LRtfkXhG9hObj9WF2RNKPNG5DKDFdfgKaZZL+ZMRu81xohAfz0XVp9X/4ZJdghhDw
	 X5/G1r/cN0Tdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 748F1C072A2
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 04:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170062669646.8918.2121577417040494994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7fee85d895faa9ebf9407b2b3cdaf49700a11e86e2b4e01b5d4a0d46eb425ae
Date: Wed, 22 Nov 2023 04:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700626696
