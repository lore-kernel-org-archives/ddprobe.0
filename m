Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4B8B2597
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 13:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BADBC433D6
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 13:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669297254;
	bh=/m7NnnmxauAgrpCkGT69Mb0TheUVp1v4NitusQntVVc=;
	h=To:Subject:From:Date:From;
	b=RrZOLvFiK75vMA3jZUJ99v/Kjrb/wEZtvnqV0Saqt+3Rykm4DCvM6kBdLt3CWJ2ND
	 oMjUDt9FIamJleAsUbtzfWerGKHZD/PUikeHu5jjSXta1mtFOsKTdP9tiFzby+nZdo
	 Mp/sUDQznUc5+vNeSpfMhnmoZSX7ENTC9msAv+onjzrfdSVhpwcYUJUhNBbzfOHz4t
	 +9m5Rvqd+hE6+Iwb8t0LjMaTErmFLeGZuzWPqTRgY9kvS3fzE62026qOEC6fsUSRmj
	 IrGYgJG9Ud8eairwMcRmDR6uMi3KEqvdC1HD2l5+xx+tVZOjO/P8KmpggxhV/84oGT
	 CF30hsIcN1KwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E5FCC43217
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 13:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166929725437.4301.6963941400693405771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31d1a99fa0514940cf30c6404c94a4e2a16579a7d4ff613be5a2c3215ffc1b06
Date: Thu, 24 Nov 2022 13:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669297254
