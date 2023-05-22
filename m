Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EDF1EA8
	for <ddprobe@lists.linux.dev>; Mon, 22 May 2023 04:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4F16C433D2
	for <ddprobe@lists.linux.dev>; Mon, 22 May 2023 04:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684728185;
	bh=VxAPMSlereDtQWQQjwYhMUReuCxkAbMkIMh5+ksZ5NE=;
	h=To:Subject:From:Date:From;
	b=AQhFhoFb1P9P9ah/tKLiMWJaa3Q9Pa3JlzvTH8ACckWk5xBUS3gO18lAbTlJEOYwb
	 iy7eTij3nc0UzCIwRdsa/cq1cAnm9Mx42l8j7TiujIBreiePHYj1EURUkK6bSFGflj
	 61rMFvKbhsxHl35pVzblTCt8DOYp6cHlQblpzKhuIWE9/n6U3+7ZkXZFFXK5Li4LA4
	 b93VZIwKtTU5OkoKGB4LrqMByROV5Q38Fdr8aDKIcmyFxXOvsfXpS4cP+vn+cOq5Ia
	 I8qgEwZyRMSdQ+zb3UcDcr1zEPnf9rzG7o9yyTyVpZx3LVorY1gFp7pVKECkgLuWcC
	 bmh6RKJbb3vqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9397C77B75
	for <ddprobe@lists.linux.dev>; Mon, 22 May 2023 04:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168472818572.12687.1844193706829862903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aeec5190c80da6636b7c48aa8052d7074dbd148f2685a7c4d1eeef70f36d3a07
Date: Mon, 22 May 2023 04:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684728185
