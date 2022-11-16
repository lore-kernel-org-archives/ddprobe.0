Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C89FF6106
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 14:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 717EEC433D6
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 14:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668608454;
	bh=+eTGfuzwOF2oadGnG1ybtx/Hs8G6wpCiFQROwzzajTk=;
	h=To:Subject:From:Date:From;
	b=RiPGqhOYsnSHIGWdAHIgPr0oF+biLSq9ZAC+HfA1p67es+oAuC023ZHXtJC8XgNvG
	 p9ojRt2pZNFe5+x2EN+f/qDv6I6JthalnBVoRcL1Xziwymf5sPoVwWq3/QW1XtGXex
	 ur8mQr2XCkNzLYsP58g6WQJI04l9ULshXl05uTFzQY+kbXzBhwphpU4CMk/nHn51K0
	 d9rJLIE3GN0CucbCSb5O+Iqv5sE4CSn5klBTpDHE3mXwnRO2BmdZVGSMWM8LpbMr6h
	 OwAKnPAprEsTkxEgMQbwKeLCEr5aEkmDhu0qaQhEp58ayJ8fsQHawRgIwkltWO0Q40
	 uRXJFrjAT0GSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5367DC433FE
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 14:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166860845433.4604.7914897575971579826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3042e3458f4c4e85b34471a8ec7884b2d87c4707e46d7e7b47cdea1cdcef3d54
Date: Wed, 16 Nov 2022 14:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668608454
