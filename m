Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 328BF1FBF
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 16:17:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6FAFC433D2
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 16:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679329026;
	bh=J0zVSGt6t1xqoRs8L90A+SLJ37b6wIflgycdUnVWTCg=;
	h=To:Subject:From:Date:From;
	b=PcVcyIxm1bgHcOabzrW2REKlTJzNOvB8bim3gpgqn5wlN3a0Vkk6Iu/KJTCamsbmk
	 7wcwM6cxUT/EL1AmzYMAUn0tZQfEUNl6KimMtHG8e48Jekm8lZjolNdz5Oi1ivPZjn
	 lYfr5JfKv+ky6sChWcdb+ujOmW4sOOvZWEvacyWX4D9sNoFIVmV2pFwGfiYpQdQbhP
	 q2wGdMqg/k1iKTqQ3Xr06/JmWn2GqcJTCVXoMUXuWFaVuEb63kKvOgmUlvi2l0jZNw
	 sddwIHEfv94qTiBKJ9SXZD0m7QIhcqGIW4ypjfAQA/LoeBWw/nYfTWzQ+XAPod/C/p
	 Ozq1JXOmTYx4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B94AEC6FD1D
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 16:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167932902574.6577.6947149850670983138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37a0ab69e4d83b6abbe6aa8b92a06b7073073bf46a69a2afc41b2322ec6b3f82
Date: Mon, 20 Mar 2023 16:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679329025
