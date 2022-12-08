Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B943B629
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 05:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70414C433C1
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 05:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670476854;
	bh=dARHlxhazu1QjwShFBsY57aXH0lIdZXcU/W9GE/XNLs=;
	h=To:Subject:From:Date:From;
	b=lEntWIciUSSdnT8DYbKfky0YP/ZAZ4Sa9q1uSTOUalGJ5Sx0FcRMdfMVgWrgmpRwX
	 eI8qd8iBZ5DObkLyGzTjUlWiSIzPnVfBbMQFvCvUbke2GrGY4lU1HAlGCivu9sJ+Hs
	 DY8nfZVmp0xALk/QaGOQBaKU8zmLY3uCKAAhOlVkk2TcqNqHCwA95IF8TR9PMw7V+q
	 02w17cFkbF0VKQsPJxZIsFolq+4+BaQMFvjd0sSHnFMFtbqigjA351BdDW+3RpfUJT
	 de1hX6s0orVfZRLH1QWYPF6ya/LU4ZfNzQhnhNIeK+pG/BFT9okrmsl9YIj2Nfb8G3
	 4EQ0aPrEgavSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51869C3A5A7
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 05:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167047685432.11817.18385310924928430560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3ca934252045cf5880efbfa0dd36a0ded6cc6c41b17fad5555f89967bbb4b82
Date: Thu, 08 Dec 2022 05:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670476854
