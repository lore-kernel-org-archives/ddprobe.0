Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B92B87B
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 03:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B6E2C433C1
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 03:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666323053;
	bh=1ZSAZWg+jettQg19prvWmtcxe/EE0txAFcPizq1kwtM=;
	h=To:Subject:From:Date:From;
	b=dBIBB9nqBJE+leKnFw9fF7/7jiV1H9prSyM6Lsjb7IKztEESM6216DEa0J4IQSpjw
	 oqpGUSXxUH7XYSooE+FS/0rxt/HB31swimWUhZCH8z+zBsg5ewEbZZt/+30mQEyUfl
	 xA7m9XVClbnLmFVmmNf9zWOFmOuUpDF80lu2/EihTRKK9FpLl2qTFM/nElz5UCbr14
	 v6LlHL26UZFtQwK5LX0rS6II/6v+zALkMmjUJLGc+bTvVJ6Ua/J41gwy5+6pX7AKsH
	 qmj8RjPjAQmqOngapNY02cNNeJpt4dpRoKEB0MeQ9kZPDJTl46VcRShS8gr2M20a/R
	 c0LVdJ45oOzZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FAF3C43217
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 03:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166632305331.3807.1730869267204937614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cf159eac0240b17cbe348d1835aef13b753a88220af1789863f6943063da14f
Date: Fri, 21 Oct 2022 03:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666323053
