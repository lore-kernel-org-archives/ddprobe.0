Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30A69BA4F
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 20:20:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0EB6C433D2
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 20:20:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678220405;
	bh=hqMzVh7LbtCwDXWORp8JXJwDlc+vu+n7twetahHw3/4=;
	h=To:Subject:From:Date:From;
	b=CvvHlGpg9Yu4QrskgD1hnOHncZHBpUCFOv/2FOeTbDr2BkJ/X2Kt+TeA0VmEgbnw3
	 sMr0kCNkAu83sWzgY5g9TwgR7HEx2oBOu/uFUsPpGCFoPmqEM4uMad1otE/BFCUKpa
	 LaEPlPgq/rzftsOWkjmXOg9DVEFoLbknGGVN5YRZ0YvEUB5MNU7I1LgndCo3M9SCph
	 69xYW1VXkQNVgbIi/siycK5p0MmDjGc3+jdsvXtx20PijZ3K+CWV0CIqEwX7S4VZiN
	 qsNVN1Hfn/g56tphAeloVXI6AmzPDjkk4cbFQpDLivVU7UzjZhtZ6hvt7jv/CcRC55
	 UU6Qwozm7mi8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6FA9C678D5
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 20:20:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167822040573.28903.15043637447990638131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90ad66ef68558aa726f4087211194201eea2476daebf65061f4f5fdc75f3c41f
Date: Tue, 07 Mar 2023 20:20:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678220405
