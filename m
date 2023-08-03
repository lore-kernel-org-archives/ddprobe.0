Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09F2D1E528
	for <ddprobe@lists.linux.dev>; Thu,  3 Aug 2023 13:02:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD6F3C433C9
	for <ddprobe@lists.linux.dev>; Thu,  3 Aug 2023 13:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691067728;
	bh=2sZIC4bOce2/GuoCPEsW8tOpn5u/Pk5PDgieQeqYFMk=;
	h=To:Subject:From:Date:From;
	b=Rbi6EVLBdXfZyAg5yUZpJuCAEdLpAyr1rtl/5o0tkAqcpsK4u2YGbD5n6RYnAZ157
	 WcaYIqEG/lm9CQZl/Qtz1Sy/f8pdJNQw8Jy0JiOL0hUZZq2iULFR1ZMQJVJp2rDUFW
	 83SbOl+VI2vDJj9bwQuGbf98Ft902PTcpAOzZiM9Z+p9BPiCArTc350zvd/KtyOVHo
	 pXIuILbtVCM/JQxEhyy4DsTFHGLsfkI7qhm+L4Eqg0U3JABCDubBGWv8SDaTwfXiL4
	 +mavfQhnwBLzgqMquHmXalO+qGqYreAwcKM8jtZycIYKqqkESkLLk1nxQGUbSH0yqC
	 94s8d3e8WSwAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1B26C04A6A
	for <ddprobe@lists.linux.dev>; Thu,  3 Aug 2023 13:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169106772871.21087.56588683682963403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ded527796b35408ccacaa7232ed8d69552b3f97f650b691ca5cbfd961f34dca
Date: Thu, 03 Aug 2023 13:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691067728
