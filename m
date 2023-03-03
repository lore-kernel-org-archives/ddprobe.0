Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 465C43222
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 21:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9769C433D2
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 21:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677878225;
	bh=rfwnX5ZicalnGaFxir+eOFfJKuRfakYESXGXqYogkXM=;
	h=To:Subject:From:Date:From;
	b=tR0IwoJBIWBv93oGQA8ESwJvFro8sYF4mn6JnmKoNN3dpIOL19H2HNXvdIzR2iLaF
	 ysl+bVjKybsAjOzHUKY8o3b71tF2zUCXGy0onc/4/Sl2isRUjxZKE+y3gZcKdSe1VD
	 xYTo6lBMUCsC7Fm3lLxlf9akMYRCjs1goFwbk1uuoSv/HvpnedOCvLeH7Raz7Igrbb
	 T80nNkZJljmr6JAgdJGZmAklc7uy6WrflfKe00ZpKebzCoi614inLhoPF9FVs8XR/v
	 SLALbVdmO3cHxnIgH85Wi9wO6E1Lp6HOcz2jxtxhOfWJ3bS+bgvUDRMj++PfgUXAiR
	 8vuCTNwjCG9wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8F2EC64EC4
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 21:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167787822581.19330.10632703114650269602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 650d7e004e7c5a180ecc3df6ea4b32debc82e3358cf7e89c288e2c2b39ae1d34
Date: Fri, 03 Mar 2023 21:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677878225
