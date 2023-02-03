Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 302167F
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 07:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1733C433EF
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 07:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675407965;
	bh=TBPgnNXmw9MgjTSeYp5wP6PA1YiFl/l58s4oVAmdUkA=;
	h=To:Subject:From:Date:From;
	b=h3XEQDmJZMHIGu97LPLAij+O4RNGzgiHE9hao2Dea5aHKikUu3aGRFPsEBcJAbEif
	 QxHQ3+ZbrDk79C7MnT8Utb6LNhhzc+Rm64TcrwH01ObbKtcLPc672ZcOAelHdbhTiA
	 BOH5VPXIE/C8HkIszxroiE9BNcF/VclGgy3H+RSSD9aYDgAHNe+Nx0f97R5XRUu2Sq
	 nk0XAvD4MOQl2xafBQCglU8OU0XiypXucu6ZJ+45dx1vNuJ4AnwMk+G3FBtEUSN98E
	 3CNk/Kt5qo5/PmF90mz784qfjWHcNMJRabimJQJVp/QEzDSp7lMDfIuFGIkk7+Mgej
	 /OY5hP7iyT6Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5B7EC636CC
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 07:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167540796573.5929.8941192682468165179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c8262810982ac1fd6a9273cf89e348f62349b2e64de73d41483b1f50df298b3
Date: Fri, 03 Feb 2023 07:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675407965
