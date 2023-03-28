Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 561048473
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 18:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 04956C433EF
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 18:33:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680028386;
	bh=psRzgNUIxKQrk9K2l7Vy+GOLrXS4UiqF9mgRArBhfuM=;
	h=To:Subject:From:Date:From;
	b=qjB0RWCBpJJrmpGLfkyk78WdZVuNgU4sbS0GQ/fheYn+1pqHBLKMc9Tdb5SBXmN81
	 NgSMrIK1tnlFnHBHW1RN1oLhS6DaIHxGJxMisEKOClC3mUjF6TniZ+9kqS550KKmvR
	 VSbewnf7yjphqIk6zT62ydPNERVGLv01lHRGnJPV8bcvApKf8EZ8LD0Y8OLzZEFYmZ
	 yxG/fw8y/ATGRImXaX4Dsn2JjY5JlPObFgAy1TGQWnA4lzPI9not4D3i4lqPi4eBNB
	 zxjywnq9ZoaK5PDUzOa1SHbD15gbeIMfQJGIUrhPC2U1d2Ic/rpBtxG1f9t5s5L2Nx
	 emd0No/fZEKyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFD5EC6FD18
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 18:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168002838583.23606.16181045440109033021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bbd0feceac2fcdb6c9e6c0dd9ab642b9f8cf08467b252c8b737be53405ef392
Date: Tue, 28 Mar 2023 18:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680028385
