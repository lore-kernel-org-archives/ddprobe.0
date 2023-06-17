Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A337A28
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 04:09:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED391C433C0
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 04:09:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686974949;
	bh=TBvqxTshjnwb5derw1BpYy0Cm80Mrb2WHVf7v9P6OzA=;
	h=To:Subject:From:Date:From;
	b=DnfERauJuzDc1VZf/LFSlmWLF3jX57Ft20xgES8WpRxsZuCJ9Msk0aH0GtyOv5//7
	 W/gATJn0hAMAbFZ6PX5EdEKvawmLOmOa6+4CuDLdKenTVrw81CzYBBlpeJVch/z0jy
	 ftLRrM0qd01BJVEKAUrfnfaYhXYDcimKcHtJyOxt/hnotWxj02ifpKTeqfJ8+XfYb7
	 KS7tmaaoze65XP/byts/GEL3oOXNADDSIGtP69yE6dYEczyRRMgdlGOH4y/EdgVVF1
	 BWsqcw0lLNF6zIfeFqoqDgq/Bf2MfBLd81h0Pxw+nWKxtKiXAf1FrDmz1kREIO5wxb
	 tfg8vUr8epRMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C31B2EB64D9
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 04:09:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168697494872.3899.10792133704452073543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecb24e33f0dda3deefaeb1e9b7aea10f05aa2bf7951cad25fd26c7321cc55eb5
Date: Sat, 17 Jun 2023 04:09:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686974948
