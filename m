Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9C0C2105
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 22:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CE6AC433C1
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 22:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663368053;
	bh=UtpUlCxw3VI8WRUXWRmsyJk8YRIsftUluK8Q5y4YTfg=;
	h=To:Subject:From:Date:From;
	b=k+s0bVWM+1q5/xG3rW/eql2VQ0VtM4Md8r2b2/K9XvpHwBWCY0C0IxLGbR0HMEGv+
	 C54l8FiZ0mNIPX900kBsxN9hu0aE4ZTgSarZUCW9NKWwaKpeaV020eg6XRndOMZOTB
	 /9M39nKkfNp7OL1z98+/8PmfEGzh+0ZYdKNWZFZWN1wHXQLLMfGFliMyOMzchr5iQm
	 eX9fwdNu9Y/E5sKKtNSz//JJcVAtXpIPDvpSFe3545taJGN6rBMa1C/1ckyP3XjTux
	 YuYqJGgVmESvyrYbFJUbYHBJ1G9UbrGtpiUyuth7Enit8yiKBbGS+q703CXG1Tw59M
	 KP10f1feW5iqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5ADBBECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 22:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166336805336.27025.17486719814016757226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 891fddd4a529362744a39aac4c6a7f913fbdc1b111ca5c15d45ac1a27daa0bca
Date: Fri, 16 Sep 2022 22:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663368053
