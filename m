Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 542F979D6
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 22:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF636C4339B
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 22:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679090526;
	bh=9W4zGUiHU8+cjUHf2JaAdaCmMg8XU3ZxMHJZGVQ6Jgk=;
	h=To:Subject:From:Date:From;
	b=ZKdLplV/Xsgei5sfY/vuedOKPgBewH8tANgyk67saF1n23tCeCHDKzcyRXIPqYO/Z
	 aA1agaAoF+x9sRxZeVjz6LfMY5KO/T0LKxnOo6VTy9poCdf/Um7fKho5+EbUrXRmso
	 oAGsnsBq/lphN765ZGunnEBCq1u7IwjDuiVemnuDf8Ch8j5aSUWncsGX4m9hguNLtf
	 0q08yiVqSkR9q0rF/CeTc/TMuRpLx7+mU2JOLQJmJf/5NwrU5XMxOfMPdX3TQYxy0P
	 0GBlpBM8hbJjU0t4Vft3a2r1McqzCYrnuzt7Q8LI4sXl1U85rFu9MyLLyW5HI1Wubw
	 2KYg0pTAvR7hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3422C6FD1D
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 22:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167909052585.29720.16291105830834241335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f83a9d991c5eb04803378e5fe7d4ddb587fc8ce3676df6135968885b6e620c2
Date: Fri, 17 Mar 2023 22:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679090525
