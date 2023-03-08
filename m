Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F17E370
	for <ddprobe@lists.linux.dev>; Wed,  8 Mar 2023 04:31:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE41DC433D2
	for <ddprobe@lists.linux.dev>; Wed,  8 Mar 2023 04:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678249865;
	bh=ZAjeCK6WG/x2cmXabgufDUT+dT7En5T3uCjobHx5358=;
	h=To:Subject:From:Date:From;
	b=Uy9tL+0zG3BIpXkY6EJAjtUfruYOPOytOkGKEW7A0H491oQmPgdEwduJnmqiiVPU5
	 rilmvpTuJmSKjCUQUcyGGKFtum9jbuYRpklriet+SUWDFhaLhXEuWz1aJmW97AZwnO
	 0pAmY56uwjX7MDfR3TNOEzIGsJJaGSeV/UhuRSXnTZvMYbuBe8wvwf7OWVAXbwIIMw
	 xMVssHTl8qjtkBPotOTJ39zr/ndautliEVKXjbYO0VzXleq10Sc4MQB1+jrFYeeYpp
	 Ti9Z8sor4be3DeERQjM1H8KsybUo2hmsEdo3lln45NLIkktAWxoHCYCGmXS/7ol0zV
	 XFMDJGSsdAJ7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3985C64EC4
	for <ddprobe@lists.linux.dev>; Wed,  8 Mar 2023 04:31:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167824986572.1552.18082343574172142359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1dc745f936468f977e9e27436a8996a9e44caf472975036243ece98125ecaf4
Date: Wed, 08 Mar 2023 04:31:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678249865
