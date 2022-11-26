Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C86CFEB30
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 11:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71164C433C1
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 11:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669462254;
	bh=xw+IkcgfJQAr11iYenr+yj14fHbS7FYkFPnSvFnm1cM=;
	h=To:Subject:From:Date:From;
	b=aGo6o0UEx5SXidtwmYHq1f1gSHuv6b8jofXcHr2mSKz0ziLfGUcgGI0fwCqzu57T0
	 ltzUeJ7VBdJAZ6BCLVkEPj96ZEZN1v4FDAxJ0tYY+wjjFJhwAHUADHCriXHqsP0Odv
	 AOOf1buuW4mij5E/ZD8mZshlETTy8VxsKfB3yi8ntSVUEjNeQzhh6efeQ8WIZARUOe
	 hSyusL56rKff1IWlTExNuTA88omhGn8i0HdpmSpKKNP1ClYdKZ6s4yS7NngbdFD1nF
	 GPTv4b0jvCceJPyKBQnuzbD1Z1syTPtEwGsUEf/e3RDopsq0Jv9e3+F/HOAHRbNuU9
	 ItIAmoUUm6jHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58D09C43217
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 11:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166946225434.28757.5813677603225597578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: caf315c28e29e6bd7990e4e2423a135d88dfa4300b14594e02ba5196e8cece94
Date: Sat, 26 Nov 2022 11:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669462254
