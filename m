Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C739864A
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 06:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C0F7C433D6
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 06:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668924654;
	bh=muTe//mB94oDyvTc91A8cbEXn10ObNnr+Gf8Tlwbfi4=;
	h=To:Subject:From:Date:From;
	b=IqYmlbxfYA+L8mJkomyUOcB4sRN0h4c/xIw/p1Ev3KxyD/pgPhWjT+00Xs3qkVjk0
	 nicSCHUrXNMOaIAKNy/2gktvVNlC8j1DOAt1kW8LWV9JgAHiBCE7zDRk7BZPe+Duo9
	 BI2hG4M5m5q1q97eQfjEaHq32Zm8kfVJSR5mhmVUkvm4NGy8AQ6c9LxR1HlARTszC+
	 wrlOrl2zKRNCa4X+YZ9rXS6ixF3ta7sEGsIdnG5tnOdzAcS7vvJrbGVoQVfc8cilW1
	 Jh/LXjcQDAIML3CL/4F6tAAE8R7VQB3MzahX+bF3szzYDRKAMaNICWCAVoEHxgtMI1
	 IvdNICMthYB3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51E99C433FE
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 06:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166892465431.9434.12200177996790183831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db5b417ccc5e8e62956efb00346df4d51e7537433c19b2bce91236840014b9a0
Date: Sun, 20 Nov 2022 06:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668924654
