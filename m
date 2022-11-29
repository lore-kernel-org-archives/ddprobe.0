Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF7793214
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 23:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80AA5C433C1
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 23:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669765254;
	bh=dYSw7w5cMs1iPmK3tEMzanW/aHo49/WPAu/D096BSOU=;
	h=To:Subject:From:Date:From;
	b=GRMpfVK857vf+NHtadmNOz4dF8QvYuZx61ErULGcJIYDUMBcM5ByTXbJIS47ZmMXV
	 j6FFFUYgGX86IerpaQ34ahvmblMgtjo/5o6E+mbXULTpHAohAOUpuH7m5osusmch7j
	 +2iJ4B3hLSW146SNeRn6N/ZUqr7jHQj6xnfh8W+VTSE265z6Svj3c2GmtwS1ywBqbx
	 GMnAioxCyRWBQqx8BzAE2FGPCpdOi+TlrnZ6Q9jHk7uvQZrsSEnjhymZUwclnXklSF
	 RZHN+/M0WXehMeOnFx7YexfE4fXOdSJPAOn2Em625EJbqXaPZZKpGGDfxHrF6UESlV
	 aM/plzVvuV94A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E0B3C433FE
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 23:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166976525436.13512.8099389717499659347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0070fc5c31216265fa4b4e2669e8c60cd74e3dbcd300c5921fd95c751a1ac9a
Date: Tue, 29 Nov 2022 23:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669765254
