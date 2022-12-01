Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D26F97473
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 17:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80DEBC433D7
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 17:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669914654;
	bh=s4Ok/AxQx8gokcPrKJN6jimxSHxifUgyBfxU3Thf+UM=;
	h=To:Subject:From:Date:From;
	b=MBqqvEd7GHpMSGaIV0ajM0uteUo/7qAo1TUqYlcH3bwjq5SjvmKQ7yYeWFVTws6n5
	 qCfGMDHsN6Ze/nE3TFH0HcFQeHGKU+JAg/opV50J/zBGSmdaYaBzIjZgQYpfNsKQsj
	 BeUqqA/XM1wGR/5fNkO8ambRLidIRNtIspFOf59YDjkahs8PySwAhFgIPHY0f/xru9
	 vNMw12y50ATB7q9R+Owhdlai2ywfuTBRja+kaNMq0kkzkItPl5pxhP7DqicfacL3cT
	 c/va+3E6OWWD+ke2xHIDkeFf4cMAcrRxG6Bp8THtOPXIIyiaJZAi4mEuviluzqlH1o
	 cAg1+QUqpk2pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64E2EC4321E
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 17:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166991465437.7101.406140786145113051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5a0f194d47e5b7706e9aa380924f07e976f755a81e9c3ca62e9aae64327c8d2
Date: Thu, 01 Dec 2022 17:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669914654
