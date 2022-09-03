Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B79F7187E
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 09:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6ED7FC433D6
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 09:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662198053;
	bh=5MkYgIru3WYNmk6af7PkQIM5SutNOl/EvSjGesNRgjI=;
	h=To:Subject:From:Date:From;
	b=CuDvyQUUiii5sAlomg4bkdNn8Bo7gktxyBtwz3uunEHoHyXIJoYgZJjS2PW2nR8H9
	 UV6JmrJB3tRXvLVa5avecoikQbDH2lZlby1kUaSZ3xEcFjQ4sNhM8qkJrKG20DdIrW
	 P/nsFXRtnO5BWmSosh8xICeHwYwGFqW7kgOXNzKnolcSKFhE0a5sGS3X4jp1K8jvzP
	 r0nsGR427bZSY5Edam+KFeceBOf870T0UYkCzhbtV5BxT4GCa7UfL99M0Ym0IGYve8
	 Goz2SF3j0T44ge0BzB7oFO8UZZPB+sy7I7OOenOp/fVQG3NfOk0C/7wWQLaiDJqpt/
	 ct+xb5ZYsET5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5701DECAAD4
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 09:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166219805334.18149.15539646672661807669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4fc5d2b3e1c572327463364bf90ad29d5a7af0ddf00ed873c69ad3bc4c4d15a
Date: Sat, 03 Sep 2022 09:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662198053
