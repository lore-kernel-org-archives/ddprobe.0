Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 926D47F
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 02:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5559C433EF
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 02:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686623765;
	bh=1n07AomoZRWXqwm7oEgRBLdvCm7euFfCZOASux6uTPs=;
	h=To:Subject:From:Date:From;
	b=llgqeJaFNfvgWquL2XJffRXGtrYD4rlLrHTLGLOjaNe67DfuLhhartKz1MqYFbRNh
	 7bpaNftEqBSXQJuBA8oYfi9P2jnbM1DeLVwTVUIpF3fCKtrD+06w6cPixWf89Q76HH
	 mi+J4jlTxFRg+kKLviaAIrcdTGoYsVdzf2Sj9WRlkhkVXxVwqI3A37sUh+JJjKxwFC
	 3z68b68Pe5CmK6E4EYPYI1IyrIqQ7xDSxz7reAqv9INiYyAE6jTwB7PjrC4kQ98Tt1
	 ORPmumlvgjinTt/4dGdS0dyBJ+yq0ODzJbG3l+wdbR7HYSjg93pU0kYM0JmJEr3qhU
	 w/vLaecKqz5cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCC91C7EE43
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 02:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168662376576.30747.3936490413114346582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b40bb44da07774b29479e95f2734f188930898a6eae70c7166eae757a13b483
Date: Tue, 13 Jun 2023 02:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686623765
