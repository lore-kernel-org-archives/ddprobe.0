Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA9C57C
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 06:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EE86C433C1
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 06:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663396853;
	bh=O5yDsU/ZnbQRza7BFWyvcfBvo5R0tL9Y2kpbs7+CzIA=;
	h=To:Subject:From:Date:From;
	b=UlFKIUMtZQQM983WdEWrizLVzvDCT8hyKbqf/BPbbR5CvcEaGcnxFW6azLHlo1WbM
	 uJG16W5FtsQpN+Pw0mOcZl2SikCIh7uZIOsIZf9E2sG5jC5dXtPOh0qRFfqeOZTXEq
	 X/3gL2clH3LOF89PUhTMBvFL5j2tzDmu7xStP7RMgkzNjEyZvsZDQaHBOR5RubxSpf
	 X8IDiEo4Sum1Vo/KpghCiFYgypJSUFIXyhLjKr1C2j1+uzMENfY1HD+J+aka/TJfL8
	 bzZAiU8Igs5OwlU/yFrv4IJ5wW9fvyR2QdRWKDyrX4FDhadmqkWEtFf9Dn5EqPJkuJ
	 tl4kHcSqEG3mA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EACBC6FA86
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 06:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166339685331.7755.15312398394563934080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09878c2a321af369077ec217381acae8206fb753337aa8eb8d83dfc8661823be
Date: Sat, 17 Sep 2022 06:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663396853
