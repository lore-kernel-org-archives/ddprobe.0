Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D141B2F35
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 22:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 738BEC433C1
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 22:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662244853;
	bh=4OJRUYaL+BdD/53kTAzoGTBhqaWX5cEW7SLkcWaRCRs=;
	h=To:Subject:From:Date:From;
	b=SfKZJ0njPRRjJlPiyXgTk/82wPtirg0Z9dTcIlPaVcbteIvlbb5qCT8noj9aca2+o
	 bdXQXFL6bYkaV6rXurA+RhD+phJdIc17k7pDlwFZZ+A/u6Jvy5a+7bUdenwwEu14Fn
	 ydObnx8xWbdoQ7tFp2+0+4fQb6N0uIeunYj0OVjlwFI6ptQJs8yIX4y7CZT9oqISco
	 lerpUb1qncmzYnvcbtBy/dwlRDX0OO+LsGpkbG+LtdB1Sn4k4e24EPigRkXoBq1Mwk
	 TFg9EObCZCn5SNaFyD1biDCuPWxJB58UX9nfBl5e2ei0yZZR4C0y6Qa0SjnIFf0UgX
	 g99VlJqkBr3hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B2D9ECAAD5
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 22:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166224485333.5624.1094627585060277499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 946b783bc3962f2c570d1959278c2c6d3ac59f35612694f06f9b0e155229bddf
Date: Sat, 03 Sep 2022 22:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662244853
