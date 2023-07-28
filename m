Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C27CC2C0
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 07:12:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7EA4C433C8
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 07:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690528328;
	bh=NO0NVHky2patpd+5AMxwk17qsOWLcfE0HUERIdO0iqw=;
	h=To:Subject:From:Date:From;
	b=JdpnadVg/rjvW1/qT6QSxUaCs2OrS7e0H4BjLN69SrK3VOmSlSyn+WNPAOzYxIBVO
	 j0oujgXFopmAf+4k2trah0USIpOiBE4B/rqBsWDIGOZUc6fj5lU1A+8vAgdInEpQGq
	 tA9DjNHSLDyksPJp1BNShHO/MfJUfZ2y9WB3sJKlwzvhReviEjCyFI43/274e13lDe
	 rN0zrMInn0sDNVe0sknopuFcifiK2GP1vWDJEA4ICYA+I1vRoXl/CJwXRP31SpGZZL
	 JJKt4tPi0zFBKa4ZkMlW7pQbBsm5m0hxvU83ybwlnf2qy20xcFiQjU2XHm1r070VyF
	 /yghDvCiTnfCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD5CEB64DD
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 07:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169052832869.6666.18324242799483561594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e23dbcd8a768ffa3b6f5e0d0ffca42a999578245f561f1720341397b0acbbd6
Date: Fri, 28 Jul 2023 07:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690528328
