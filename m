Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5C3717C8
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 05:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80AEFC433D2
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 05:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674193887;
	bh=1ZMI3HYv8bHvcKAO+EGvEgHvn4rOrewynwQQbzcKMpA=;
	h=To:Subject:From:Date:From;
	b=JB/FcTH/k2xaxQRgMaPfbBgpqmqe44yzA0uf51m0Ncsw+dQGfwmccKWxdF9NYfRWQ
	 9NOFppPchnIW2xq95tBoOUJNIpkb8c9Gzz6SMeBsk3yrsWfIP9yHzx5sUm8WMEAWKN
	 /cklhtxVIkS8dytjB/KWok6N4F76/MhKL9lUv30HK+APKu1SZQ9vXchZCQPh81Vt8C
	 R/YuZhLPswVBh4IzNlZaHnxz4XiHjOeeijCP2aFQfuJ60RFbUJSIi4KYWVkeNb6uE1
	 cSnepBZEbJBG9WAxWQrxFHaPDnkXMtdmjL88VwDFipUAwLwxUDeV5wNUsvh4ih265P
	 XcX72jWVmX0vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 671CCC38159
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 05:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167419388741.3826.16878005588184504883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be98027ef81bc2debabd7a178e5d9decc068a947f7e9522d5fa2951806902718
Date: Fri, 20 Jan 2023 05:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674193887
