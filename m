Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27CBBA937
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 23:41:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA236C433D2
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 23:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677022865;
	bh=jcqZqqwGf3ptYxX6ox5rMZL8vdYEFZb26xdJpgYDGMo=;
	h=To:Subject:From:Date:From;
	b=CWNjyLiCBSAsyr4SD4ck2AmCLhPLs9CG/XCsve6azsRfJ82fNSWJKEI/JXYMlyGvZ
	 yWhywU9UwV6sspWYkXWwTWhs2H5aMhW7qAmHy+rp9UXikNwDA8MFXckzBIMqEOnLKu
	 eB8fdSZHWI0rV6JXZMA9jvF21HjPTKQq6/3hHruMi17O0EGuvaWYtRPmXQR778JpAW
	 Vao2PPgiai/fQlwYezJKBS2IMsEIixjddHo/NSoHS0ksb84ovNJNtwlQU1Gch+iGo/
	 jf+aAk9aQZYIoCmIHjBBQmWBCgZYgilQzOxb+q6+tBQoSUdUPWnEujsBw1flYIjVic
	 coOEiA6rl5ITg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B65DEC636D7
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 23:41:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167702286573.16395.12516610015991260466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9414ac5dca0add0812a10229b114a1f7e15d34e6b728f24cc71dba75dd447e70
Date: Tue, 21 Feb 2023 23:41:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677022865
