Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 856D0110D
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 06:59:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1C617C433D2
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 06:59:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676962746;
	bh=kNtr9TyW8sJGCbVSu5k4WvwOlTIGVhhI0N75kOtHpxI=;
	h=To:Subject:From:Date:From;
	b=IRB7OPqnQ/zvGjnVc5pnQm23x8tRhS4bVfBcdlRNwgVEnuQWspWHgkuYMl5fJ6Vj/
	 P9AHHeDWxbducDzUSCzV+m7OLlgpv8KkkZlBmB9+fU9+RC5HxACElJWfBPZPB4wgx6
	 qqZDUmVfu+BLuDHTvwW7Tm/sNjUdQZ9BEf+WgjqbVqBipLFMWKDrVPijXELhztUv7X
	 PCJ0B/T5k73wfn8XS+idKaC7F8dnrIY9JDDIRi/k7sBkRNGlaipAP9AzFPTTQlkeRW
	 RdwUMYbbed0JFP+nTkcgpEzHqpnjddHowUA8FFGT6ElDb/7K1Bzl1e622Cb4RtOeXa
	 ku3lbpGr6k2Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DCB67C61DA3
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 06:59:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167696274583.14099.2270912454620247590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cdf44a831ed4ccf73495c338a6635881c48cd8887ce2addf5d68a7081ae0ed1
Date: Tue, 21 Feb 2023 06:59:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676962745
