Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC57915AC
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 01:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DDD0C433C1
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 01:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663117853;
	bh=VKoQKQsLblb2MgUIG7V6Pj2bX8whPWglkRhALthNTgc=;
	h=To:Subject:From:Date:From;
	b=twOS0ykuOQB2pcpkZ4RNQ1ZhNZu18ppLoSB0Zg5xRRr6nVhmLkFhpyHU6NkuDL1AM
	 n4ZrCIGY7ioEKWDACSORXijXlQAz8clPRqADNUb6/J6wqk5LX4/uF/v2tiCCdDrYhe
	 Cqx0pyuikGQ67TVn8IGd6+qu3P1nkFAKvdK13l148vJMRXn1Ie5pvc8z8NYXTu1UW0
	 KduwfC3F1BL3VaWV0ud0zXkqapsbjUcIOUUUETiJSQ+s1zErMiY+fBimXDqP62z3BY
	 l+GLDlplJJSUU/ZKS9MhxE45TX9YKDtXeg4gCkTUQpBoc28r3ycnQCHPefWuW69po6
	 ifByuEPUu/yiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51B80ECAAD8
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 01:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166311785332.29690.7212133735806546366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a084754469c8e86b6c83b3d36857f6629d011cb8aa61602302274397aeafb56c
Date: Wed, 14 Sep 2022 01:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663117853
