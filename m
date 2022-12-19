Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7A34A31
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 01:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77181C433D2
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 01:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671414087;
	bh=RAlQKPNk2ecWvRSXMwP7LdNa5tsWq7k06qXrJPS0CjQ=;
	h=To:Subject:From:Date:From;
	b=FnpDSZSZOnwUyqatATpgaySAb9hFuEpHpmbBj0gOa2QNxZzz3jMgbQ0BJfd+cwxN9
	 UjQWsBKFeH5t1823Ldzfd4R0OLVhgGhAUt9zJSAQCaU824voNV2QRys4fuK1YkHe1b
	 /syEsJTHVNL0pBCafjrdWp8yhU6/4HV5Wx0LgrzSZmjmj+2UndAQo6//T+13GRk/PU
	 TTQI0ukLJP7/zdt+hpQ9hVulo1+5GV8QuQs3g8vmQn3CmEkJlN6T5sF7l6t4XIFcwM
	 NJooh3dcIC1eBLXuB85VOo+r+Y63ux8l0dfxcypWjC6bjIVlbwPXKf1Iu8bx+ISxj2
	 zcXbZO3WGt8xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60860C4332F
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 01:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167141408738.20847.1226168527702545750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d83553d3e6fea2824106525c1c534ea87960fe0a0dd752aabdde86e06218fd30
Date: Mon, 19 Dec 2022 01:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671414087
