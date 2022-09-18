Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B409D7C
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 17:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72536C433C1
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 17:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663520453;
	bh=BZ3ybh9dmAFlqebZPh/R6thCa/vMcskdhmuIvtHvwYM=;
	h=To:Subject:From:Date:From;
	b=ohCLL8K/ykyrG/u5N50bPBe2WQ4v/XQOmnwmdJBvq5kJGqzrU6xX8LH0l6XUmxa/Q
	 okm6Q8m1dbYthjxxXCjaX70qZvqR40qdzxtUu0Jn0oMX4Mnip0tIYmbWY1mos31ktB
	 MrXOAUNFFpd0DMAflBRFXIcb7i9+0ZNyEDuCBJjb5a2pMg5ovoUSb07B8BKMRgv8mV
	 ZATtQsPdiBYUQ/OD91W8daRy0PM1Zqx0xJgn/Bs3s7LgNd7twdHqPLEiCWFrvJ2kS/
	 8+Cf7g3uiRzLd3OIBrfeHTWyqVVs4wnVoOXfWHL/zOVsDfIB0JjgAr28FjQgLZH6HF
	 b+SLN6sw+LLJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54C1FECAAD8
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 17:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166352045332.23894.5990676148447722848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af43fc56d5252813d7fefe16f8ef9cc91324b7d17ad321917aefcb34ac269f30
Date: Sun, 18 Sep 2022 17:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663520453
