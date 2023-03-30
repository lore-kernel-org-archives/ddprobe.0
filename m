Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C1158477
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 15:39:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 147E8C433D2
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 15:39:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680190746;
	bh=9f8Gbwle0+wFjUX0WiRWGNCeK6P4SdRZqAYw57OcOMI=;
	h=To:Subject:From:Date:From;
	b=u3ZPd3+KHO+VL0aVnxYMchmucbl4K2/K86WFGrZCzRDR/sM4K+0oUVb+43/G0mVw3
	 5DgYyMsiNkHoXS73a39JQZkyPSO9SZCWAcZ/vW2CDvPxpguAZHCVqj4q+GKlm9K8H1
	 5Q/LTuu9nFHGWkoN2qLykrvzhmIi7qp6adwNNWM2HyKaXROFpGKQEpSJQF4pXsSkuG
	 FkXxGuncFakiL3SGkC/TTfJvdGukJzgMG2MolPlf0dt00Haq0eIsGGUprTYRBmSwgh
	 J6KTngNsThRL0YQHn1K1NEaJOySkjuTlM5Yj9evv92R5Jy4RudM6H7Lqq7v7KrlPdi
	 i8z7KwrTKnCeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DF6FFC761A6
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 15:39:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168019074590.9322.15318679721578518406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d43ee75e90b1f33ccccc6646cffec69fa96bbb2ecfc26e84b14783146c3a0537
Date: Thu, 30 Mar 2023 15:39:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680190745
