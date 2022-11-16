Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0F32D53E
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 19:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7279EC433D6
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 19:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668627054;
	bh=KC2pwS/Syad/lUleFcnuVRt1UcT+P8hM44NmaaF50z4=;
	h=To:Subject:From:Date:From;
	b=mYefl0LUbllncsHr/CzbGYcDvwz8eKp7H2nV6xYL1tHW0dbjMgmonuwPVUnL2z21V
	 7bx9U1w3p13W3B5kr7G3PUnB6+0jEfaMwCYfu2ul8er6+FP2B6Xb8zMvzIQXiPd6Ib
	 Y0sIennvVXAt9unjIICeDTnLSS5pwkGaI5fyTy7uNTM7ILVpS0jb6TmIMw5IlWv6aE
	 hsUV/wuinGW3vrcL7sD+OXN9JditV0bvgmSrsnlEdQbx3LJNPiW701750CqlLnSkHV
	 oDBZoZXOukdGCGXVYo6ilP6of6O+ErJTbU4Vf/FKsCr06Tzoelc+xH57aZFK8L0kz0
	 lYEbuCMY7vVfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54D41C4332F
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 19:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166862705434.31901.593836494491975750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56415a516066917877598bb1dd8cfec203feaea55279f0862563a8c55ce0d965
Date: Wed, 16 Nov 2022 19:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668627054
