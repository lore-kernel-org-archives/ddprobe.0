Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FA8A4C60
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 13:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D754CC433EF
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 13:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675431365;
	bh=GKrYwCpvbP5Zj0qK6uOsZereFjwkYOCgyMGDpj1CerQ=;
	h=To:Subject:From:Date:From;
	b=NHRd0VcIxAbMnMgJzytL2a5DCDl4ESyRvCnZb9rEUuPQnbOqCBPj4SUKSdjgD6m2x
	 a2dkpq/O38f1tcio2jmWnFhdUab48EANDukStXJ171mL12k89gDFMlbQLMjNtHuUxB
	 7CMk/Hcm94vcwD/S+TYUkI1mBPPGwHVShbRwpKnZMgH4z7wyjzj8IKqRg1mxsW1Ao8
	 LEdDzR94xhZ63a1xQFnX3GQ7289+gT2xfGQ+8mwOsXNkK1zwrfGlfvh4ZUdzuGeNdH
	 /7sFydJh3q6i/DB1HZYH0LCTphCVxB4VyE1XrKdLFT/NOOFkI1mTpthV96ySpHbXJq
	 lC5zmwDbzYNtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B969FC61DA4
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 13:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167543136575.6866.4550704475440814515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01320b2e36e429ec0018f57841640d02dc10609b94523726e37aa6e2abc2c8cb
Date: Fri, 03 Feb 2023 13:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675431365
