Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7ED07E
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 02:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77CA1C433D6
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 02:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669431054;
	bh=Z8k+lmAArkUtcqM/USsq30nzknNVMWyqCnBJZaewe+E=;
	h=To:Subject:From:Date:From;
	b=T6s7psvBM5FJTDC8VTg2Vocjn8qKfFK0kLelEpp7gDBiXa8bNNnNupJ/ZDxpglj9h
	 24D1wio+RVwwbNLY3zx8yCtlEn3MNfMBXd3wGGwqYQgqySRNAYk8+LN1YSSFCIHym3
	 ePxc0xBL0YBUgUMCimOHt3MQc44sVRfzk5zqGKQAYJvSXpSZOERqvOoPxaUiBaLUxt
	 o/lJpWXz/+vsL+Z9OG3oH9eFwE650oaYRVjYeifbAMN0IZ8otELz0sJel7E+L1Vof1
	 op7GMK8zy1fuAXIWuj2SE8RDvz+4O8x1I5dW2FOgP6UiW0sYc4m8zalhI00v7+hgUl
	 +BgI7fWAKTieg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CC8FC4321E
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 02:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166943105437.26626.11153327083249550772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f0d57bad0e8bcc5b39aa2bcf532129721f76123845ab6872918ac52eb3b7ccc
Date: Sat, 26 Nov 2022 02:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669431054
