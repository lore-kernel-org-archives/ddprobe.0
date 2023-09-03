Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8486E17E3
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 07:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6FC3C433C7
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 07:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693727648;
	bh=Eqh6DY4coFWX505t4vwQLLBd4h6/qyJ7xE08qDg+nHU=;
	h=To:Subject:From:Date:From;
	b=Nqn1rU3Ry7cV7Qi+HBNmRqQ+4XsyLJ5PuAg8Ysv3J0NPwpkkfRbUHMUepUeI6eKG8
	 rIObA5w1CV0eMsNr1bS32CGj6/n2SVM1dfa4bZ1+BI3Upz4NUBS5LmPUy2B2w9FzDv
	 c0jBJ9UVxrCau1O3NR9ChId+4IWpm/FXBd7NlyfF3YINoxEBR5Qy9CveDoys9D96fL
	 cqrwJAQD/MCn9kmfBJfOxDwLWKm8iThjBe8QS/O/L3ik8B/xTnHwvVSneJXPI2iFOl
	 JwvOnOJgobhUJEeB5kovJcLNheeoWc6d/9F5FDjnTXBxJZn0rALixUw+Rg5nXX+KMP
	 coT3QPVCXsPnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA098C71153
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 07:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169372764872.31999.6713032210932100826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c15a3d382a45d34f17b7885de90d482cc969fc4da60850866202fc363cd6a5de
Date: Sun, 03 Sep 2023 07:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693727648
