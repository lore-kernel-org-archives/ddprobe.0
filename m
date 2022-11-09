Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE52017F3
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 04:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7703EC433C1
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 04:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667969454;
	bh=AOkLMcfruU+s0lrzYbg3o6c4Z9UuPss3l0H3HmVyKks=;
	h=To:Subject:From:Date:From;
	b=Ym9ofW3r+oHxi3SE1bcftAI8V7vzor0zjOIafcXpMFeCh2Fd0YPxDJPsX2Bp7RzNC
	 c5jjylaWUBg1a7rMuuvM+QZc1ETmR1RHhH5RUSGsBp7rvG4DwoRZPyyftIAkN8r4jB
	 REu3Yi3TyAibee+NeylN/O4fVRsSiwGZMKcbqFtTVt9c6kCXLC1Dsnuv3cSKNwcU+K
	 3I/rcLlJGwOytx7ntM3isiOPOrANyHSVnibZm4Jxg0pzHyqSfxfvJa5nWj1lzXSnF5
	 /Xs9Al/+62ArE9oWs1v9cRbql8wsjT+06HSxEcYOeY3DHK/xSIuRda16FjBhFfHDFD
	 fl6F9fAGJpSGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55CA0C433FE
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 04:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166796945434.17791.8276964280104240121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34cdcab0bc1947ab76c4e6df30b0a9c303af47cf85f8ccca3753cfd4ace47b15
Date: Wed, 09 Nov 2022 04:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667969454
