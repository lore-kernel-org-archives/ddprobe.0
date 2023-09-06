Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5923BA32
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 15:04:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5822C433C8
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 15:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694012648;
	bh=3k3Go9Wo1B3bfnZA3qgsHUKRHL8b1LN9ATKZ2BNowNo=;
	h=To:Subject:From:Date:From;
	b=udOSnGxJDIRkuVkm+SAHGY8zGSJ+ELw7R4DDWOwkU1OlzWIiOQenvqJxfmQoUTj86
	 P/XqoOsNvI+pDaslEtIhK5Rg0k6wibXRryobg6rIglXXa4vYiFur3zTxdJ8+4WvaKn
	 9Tey1I0F6TNFtLbuIgip66tFe85mWTloUYbUhUpw+vKasybX9oy61WfJrpAsXIgOwu
	 gWf+9e/uphLQCiJg3YO1ldduDXY4VGtxNdQzc9j0oYeZs1DoM/JvkvtrMLONOuQAqq
	 GIp2Yp1oTWaa+93MQwC7XEwVwI+i6aGVF2Ljiagxx0gS7eKr91F83s6hJfwFILc0VX
	 mJ4t2Ov2Tiqug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8293EE14A3
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 15:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169401264868.31542.18439815374417883012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bde91a9da5adfaf968ec171916b3df9d929f52b10e293bde8a42d3151205e895
Date: Wed, 06 Sep 2023 15:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694012648
