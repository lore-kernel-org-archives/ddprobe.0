Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49B477E
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 01:32:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C70E2C433C7
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 01:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690939928;
	bh=cd/XIvAfsAOzyn4O/1SPBlLGLDx9XQLLVXxya0g/iDI=;
	h=To:Subject:From:Date:From;
	b=gMTyPoe6p31snQt9cwFPuR/8QvkYl7bQXGsRZp6TfLFyt0blnv6amk0BM/Ko/+SJd
	 pOoudViM7GmqBFrJo7oP9KC7aSgzEWOk+QFWy8P0A9OHrec3JubQOrxPXWBjJ/L6c8
	 Drfn42U/pMXVBrqkJ7xaWDYxjils6VbcroYnsheqL6WtIn1qyNcy99xTG0Mic7eGhF
	 cYfLdVXGEbL/BASWv7efkP4AUMhVeelMlfswK7IWB2HHpKZJNfCS7jMB/yXFoDOfz8
	 5o1weM4sYKuci6ZhM9SKiRPrH/qP9eDPvJyZLsZzYYjK6Z7EtpKnx8KeUmd9Hehfsy
	 pZlCGJ8Ui391Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6C42EB64DD
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 01:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169093992867.25049.4462805970556448078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe2b23b3573662df620597095ce4fcb0caf54799a2e90ad68a2a9b57dbea1b94
Date: Wed, 02 Aug 2023 01:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690939928
