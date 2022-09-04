Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA3872F33
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 15:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AE11C433D6
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 15:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662304853;
	bh=Kxoxvli2J3Ppn2vwk4OizUd6XRG/FVPvVXQccxwSkDQ=;
	h=To:Subject:From:Date:From;
	b=jlXFTbGyOTawFCiFYrxQDJfhybzcZDJ141Az8t5cJpysfDOFxbytC3VC8NTnorH0c
	 kXr+NhHfQmh7ygGwgHwGMt/jYMk8/UovZr3oNEZS7SYiIxX68aKBMZe/4Q3RtFMW3q
	 4QfWjbksXrW/wHwSA1aRRzMYZKqJYCG5hoTCV9yEYCfACNstgf+oWKeUvweWuvPyQy
	 UxxKcu5voi72Jz8U86H+GHl/FrJQy7qMfHIOByG0mSArvYtLwjjw9tgcYJLQNUbb8a
	 pPhUurspjrPfT7bd3NxyOcu5IAWwbt7mdALsqoYuGpdtnLB0+2WQwriEF4fe7ydqJK
	 p3G76PlsVD//Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51908C6FA82
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 15:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166230485332.26688.10502416731004355445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82edbcbfff16671d33bef71107b37c1bf6cb5e2023268684d09748d7597cf0fd
Date: Sun, 04 Sep 2022 15:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662304853
