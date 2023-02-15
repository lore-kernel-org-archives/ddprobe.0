Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BC4E53AF
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 13:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC7FBC433D2
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 13:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676467085;
	bh=h9cFApq1NJK/Kva9AaW1i42WFIasKROx+r7Fs+Wk5RA=;
	h=To:Subject:From:Date:From;
	b=kF9rg8/e6Nnil7i/kCCcC5AngIT2KnYJ3RcL0VwEG7Mukp+UUHd+aorxrvw9+NFnc
	 qt/EH95TPEUlPDB5Ccb5rLMa/gbL8doYFD6kCN/XaXCF4BuaCNKsUcXT5J8YAnIXxV
	 i+iw1O81VOdk5VyfhFmHxEY9hQtmBvWwtQC9KTI6M1LOju73U/Ow6iSuUtMHGsoCH/
	 oUgTSYShyndgJTNmd2ZjN4Ld5RCnrtKHST6ULRqgtTB1EN1uuhg93DrSagFKleRBkV
	 t0dqVN3MUTHbiXDZi6MhVgGcuCZUJ8Lw6SSguBX85ADKYHiqrItoE1PH8U5Nj/abgf
	 nn3ZjMke3cdHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BED8CC636CC
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 13:18:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167646708577.10340.8966681913638783150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 022808b519411546a3e915120b88f54fdc637b76d87ef550befdbc510269120e
Date: Wed, 15 Feb 2023 13:18:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676467085
