Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF9BD186A
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 04:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8361DC433C1
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 04:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661400652;
	bh=MywRaD385fHxEf5aPRNw/Cx664yg/e/UcYLbOkT8kpc=;
	h=To:Subject:From:Date:From;
	b=AHhSZZE5Ra+IBjoClp4iJ3fKV4gkJ0zh5BYHSsxial/ImrKNs5irWfhKFYpfLrHN3
	 GTTAA24YKUqi8X0UbR3kcpzkpK+wKNsWEgCRKUjJrenqL1VA3sTI6ohu4D4tiixVhQ
	 6EsK9xvnwgoJ4s4YTRB3aeOM7Nv/ZhzCqvd3e+ltnz8PHRZgNQ4BCgO+kvKxfq164T
	 obJUQTxsBZJxAGUy6UxMy01JLBcEhn5M2uEgxiskN1csjxi0km0mhvGuwKKviyBkW2
	 xXCwJSgWTN4isZ5CbS/G5wUXn55tJzGt8jLVWc6z+kaptB/MNZEJSW0DAf6No4Dl9h
	 C+k0qslWJ1D2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 641E3C04AA5
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 04:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166140065239.19821.12128905511833516226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 300ac365d83db07cfb2ac8ed8dbf3ff7e4b1b8889cde86306cfd6cf79db8eabc
Date: Thu, 25 Aug 2022 04:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661400652
