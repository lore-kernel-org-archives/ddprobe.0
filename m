Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0180C4C67
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 02:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bgry1BuS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79E91C433C7
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 02:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704335896;
	bh=PsrRmvn0faadNOjJFxJwGI0FZ3Y9VbSt6th9RejkO6Q=;
	h=To:Subject:From:Date:From;
	b=Bgry1BuSxIwb76ZI1YdXmJ6MYSHRA2oG94QCvahYGCNt/4KRuqTnjakosIgxjJUWp
	 nlKILfiyL5N4AvlFNciycsGF/w3sBN28LYD6znVaTbl7+BRd9DYjVayInTFMS3XRhq
	 yjXAJSe2D2EpC/gdWZC0f31FDc51LVo5PMKIu9a2QV4bzYv7nJtREfp8LYTUOGqcmB
	 yCFAW7X0MQYP7h2w+FIJMpy3fzMeZekD4m3zRg/db6jfn5y+94VrM+JmB2Ek00qjPO
	 YV1mR3ahQLPmOCCsKeP2sTzRdzNIqkPcOxYI0/mXhS9w5yhInkxfy7oJdnpDsK9sny
	 I1ngmfNHZrYXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62F70C3DA6E
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 02:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170433589639.7267.8624617276871095285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 722691338ebc93419b3a704deecd2524fe7325ecac237884a1145a6501c0633e
Date: Thu, 04 Jan 2024 02:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704335896
