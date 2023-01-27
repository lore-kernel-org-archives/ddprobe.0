Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E317187F
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 18:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F418CC433D2
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 18:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674845586;
	bh=ss6s2WJWRYTYHj87LaIkNM+UOjggydAzSmNXNsZt5Wc=;
	h=To:Subject:From:Date:From;
	b=m5CfWB4Gu2IENt62eh7ro3kaZPmWnhlBh06tVDhu0uQP2W4/RScDtEQDiePay17uU
	 WcvSHV40kBv8FmUa2KKYiDoGXJsOz9KY7uCvN90v5HVFresP8npYTyfURwCWNfRFq3
	 CDOnG37znDx+n2hj2eRjp7+iCnH3XAbKaY/OS1TBxKQAq8fN4a0IJHXZdAoeUeUsSY
	 zXvzMyG17hQQ3ePoMfT7WyvN8Ku8xzM/Ob5ODNR7X9U+emo7qMtp4MlQ3AfEEKZ2oE
	 +VfvKA064unukNIQkUUbQv92MQ7rnWVPw0z9/vWsbefKeaOP7OSzHV50FNu4szdnyY
	 qj/ul55p16FNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB288C54EAA
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 18:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167484558582.15792.13632187530307871109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f08dac888e062c2c82801b5d4b7997ff2f734dd129acc8f1cdc78d8fe58dbe2
Date: Fri, 27 Jan 2023 18:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674845585
