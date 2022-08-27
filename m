Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D962B15A6
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 02:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DFDBC433C1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 02:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661565652;
	bh=T89PAQx/punrs2ZLGAKcVW61M78f8jVmBSZWZ4yUADs=;
	h=To:Subject:From:Date:From;
	b=beanOB9rvYoT6gObqaKd32X9PrHJJQ+POPq7nPINDgUUgu4zAAtChIJsicwjA8oXh
	 EaWsyF1WISkjpn2IN//LUMMtW9cRLdkj/oMOpSyysqfKA1yDZg76wpfwoY43dqdOAL
	 ijzD7jJpoFNCUTiM9BnOJ72zL54YbV3POc4sixrvgkZKGOG0IN854IzdLOXcmcXyo5
	 pitcUl4EsAdkQngLncKm4VOx8d8BWy8uUFDVdeKPTZ+A439RSX9dIxPxzEytrKw3a3
	 oeTCQAYIS/or6vuM3Dif8WvEJgfrSom2Ugnt4SClzPq2FcLOq/x7fJsRq1HsFaLeZr
	 kJWj1PgGnvWWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66A54C0502A
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 02:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166156565235.8028.3493456449675493700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36488e1705e7486dc71be84032438fbfca9ce1688d847bb841a8cec15989e94a
Date: Sat, 27 Aug 2022 02:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661565652
