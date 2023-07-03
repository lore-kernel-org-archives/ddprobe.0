Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 580BE803
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 07:16:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D49E2C433C8
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 07:16:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688368568;
	bh=gqX0Jd+z69L0eWHgkdeThViqQ6QNERF1u22H3oYCMnk=;
	h=To:Subject:From:Date:From;
	b=i3KHWbO42escgpOzDkWdVDjDMCeZKwmtluIHcoqPHJdZbNfVntvbA1TnYwm2qAKkK
	 9gWb5Yte+IMyG4ex0PBIrYmv0C143Qujku9n8gla2nUZiydbHecwing37Itf8jYiZu
	 RK151iiPlMTvsaVU6nNg4feWFrsv6WiyMqiTFGl9zAAHBBhCih5uhCAWtOekx6wIHF
	 tJDWWqP/JAz4nQ23BcTYyYem8N3BiTE3G4Xw54oWGIXZOC+XCzTmZe/blRMEEY4Q7N
	 jrV6X8zS7C2pph/kO9uSRUo1tUH8biaSSRTh4L60YLZ3IVP4pBaJEB157p+CdRiPs2
	 q2R34f24Iu9eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB77EB64DC
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 07:16:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168836856870.4654.10680221286289278512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2899663aaf59096e780a1cd1d17ea1fd03b1548df75eaa834c5f0b29adf0795f
Date: Mon, 03 Jul 2023 07:16:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688368568
