Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62516749A
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 19:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1296FC433D2
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 19:47:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680724026;
	bh=Qfto52oA7hg6ad39nRCIM2L0nOcJ8AbMh3uX0SMwflQ=;
	h=To:Subject:From:Date:From;
	b=BIYrTWWpb2uGMYHxw7kK6jbdjDLgTsKnlYXHFwy377sK5LgbrgYkmg1N6j7S9SUNS
	 whBO5nrX+AmY/e6iRGEZk34BVwI25k5ljKf59FEaK4LUME2W1iSCEKmYw4tedKrXWo
	 6uij0xybwcrIAPCPHDJTa1ZNyQ1rhuBccOFv4D6wyrPzPpbkBdtEBugwlHhx8SHrRD
	 B/g9FLSOS38McHMBEAHR6Ty+HYo9jaOjyKLzVNmSSJThaPZIuRkFdXxQpW7RZ3lqPe
	 JYQlFOFegJMiebfOoLUW55OmaQrq25LHmHNwHDyKTKwfylS7XQ1jQIfJKXOTIfF61R
	 dySCNtuTKcNmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E9F54C76188
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 19:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168072402592.23799.9790420870762762345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c4a2f42c9f00c8b1a96a53871ffe4063c75de83f1b266962d94e5f7ce4fdb84
Date: Wed, 05 Apr 2023 19:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680724025
