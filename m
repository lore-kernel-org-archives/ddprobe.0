Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7C927F
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 04:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC1AAC433C7
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 04:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692677648;
	bh=zPzi/4uI7YOi2KkyyKHPZ91iEa9QluwFDR6/9bLIPCA=;
	h=To:Subject:From:Date:From;
	b=Dmo6T3DgM6YiONwPC+bVbhJ8no2HVq7BOGJJQsDFJXdb8DkvJMPHY3FjZCbbWln2i
	 RagAw7HM3OmHdwhhmFLe3nXywrfivRipPDbnpAkuJ9WqmbiqBZ8IEnpsfdZnkTjsuJ
	 6QnPse8+PN/tjwirzrgoJRMz22yHWB8I/DLsXzMkhxFm3G2oVpmYtdnMMCJKTogdJj
	 6okgszh4PAFpvB0BjXR5/O6xWS5ZzoX0aSR2mduJLMyBYYSsqe8hXMyBKRhP50GwHi
	 tGgAsXqdHsKcDgEoHNI38GANoKGbp65sOlrxMzuzpUzfXXKO5D0BMUwtv4SX2jDDsb
	 z0plywXqJ0uWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BECCDEE49A3
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 04:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169267764875.4674.15450039141819888116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4141cf42629ec5034d5881c155179cc7e5c98737ae0dd4e8586ea29cc91005f
Date: Tue, 22 Aug 2023 04:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692677648
