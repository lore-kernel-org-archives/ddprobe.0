Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C79F2AB42
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 23:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F33B7C433C8
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 23:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687304589;
	bh=rxsL1WxmAPXlMKuphZnIv8M7f+qGt8z4NHr5lI+QHC0=;
	h=To:Subject:From:Date:From;
	b=FMDYf8Pzbr8kSNsxO1ZO/23I9xTyYA8tx2ewekBoTd4mh22QambCDdzQyj/ff0PJO
	 80i5e1dYkHh8mGNnqgJps5xwhp/7LqviDwYDq6F6S7oR5lWkb5i3kbNoA/5VXKtObM
	 7pPr1Q9r48/BUIIeIvkGqMvbpMj02Ep5bRwiMwz9CMJqKoed2hq3Prfz7iM79rL6Ok
	 76j2IOzGfnWdmIWxoEKbmjlpDHmmRUvFLvBtbXwdFrNWeEpvxHT5yqWXk89U7q71C8
	 z0gr4E1LHDDjYlmo/v+hO7HbD+J0kZj3hpl9w3uo5jnY5ZRIYfjyKGdaSGsxcO8zwB
	 bT4Iap6DP18Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD2A0EB64D7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 23:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168730458883.30563.10197566565993720010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 871b1383791d327d22531b7ba7ee931e1d537455f919f24f5592c0cfa6299a7e
Date: Tue, 20 Jun 2023 23:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687304588
