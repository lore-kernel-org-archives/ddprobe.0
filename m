Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73AFCFC00
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 20:27:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1F1FC433C7
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 20:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688934428;
	bh=B8HT3Jah1wpgcep9sRvAZX80WdtvhAVCkNExiPfzbv4=;
	h=To:Subject:From:Date:From;
	b=NVvmQwjCVEiCCUmPSn1QQTef50uOAvXn2f4BHUSLjCEVmrSW/dI7SRLQ+73SH5BT3
	 xUgSgLDFM8y15qs6nwONMdbXmEGm03fB7Jh8aWKXfAb2ZrNtqn9ntFCl2qqhztqzHe
	 WQwEFPy5d7oet24IIBbev2vdzUR2zFi7a2LrJw/4Xzqr6QGbqnQ9DE9K42uHXKED0o
	 Vj8g3VKGM4G7oMIZDyR3CsfI8Ur1qdKX87sf2/y93DJ6Y8Dasy3bJKtHAWYvgo5Z0i
	 z5eG4MJQU748Z4Sp+OwcgAI1nx4czNR0CRcQ4cz3cnlUl1/0v889DW2wy4Leypxm4j
	 oIG9hrd9ecy8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1776EB64DC
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 20:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168893442871.6750.16416671483235649901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4434d46dd3df9310ae5f4503ff8c50802928c4fb7992c13979f852b241ae8058
Date: Sun, 09 Jul 2023 20:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688934428
