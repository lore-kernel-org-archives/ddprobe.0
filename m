Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4136259B
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 09:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74BEFC433D6
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 09:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669369254;
	bh=T9KcCDBeTlbrQRL8pU4XPZEYwm3/SrtXFZ/pXfNBkQM=;
	h=To:Subject:From:Date:From;
	b=ZGdiaxe0oIkQPAHEgoZvNttNMRujq/cKa7+MJX7RsVwZ5YySino+WcQ0WzjXQYZyV
	 Iw7lr5RTq6u82hknXbHBAJ5e+fyN9y/688fnmbM/mtDvsUKKYvye9oiXrApL0KCv2x
	 nbs+fnxCFpDEEPePni8al9Zstm309DvnsI7u9njdaiwbEtrZKsnhByZFYs2FZJLGpM
	 MlvpOV1yFNQktgpobRWg/Rq0IxO2Ota2WiY5RmiPHcw2ZfLFYq+0l7UOOpoImAoW+1
	 wRuhiEZgDHk7Mn1gBzWkCCcf7P9ejGc2LKvY6e+4ehdj5NKP4eag0jYkC/Ljeht13Z
	 2A9qssskiyNLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57CE6C4332F
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 09:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166936925435.5708.10261145235384063600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f669449a7184acbf011d0bd098c2500e006f288b5f7f050256c318d7778466a1
Date: Fri, 25 Nov 2022 09:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669369254
