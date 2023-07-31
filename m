Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EE3C62D
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 03:12:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D460FC433C7
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 03:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690773128;
	bh=9y3ZrUd+yf3GM0oyOCNXJ8nqNoALygiku/MXgVQiT9g=;
	h=To:Subject:From:Date:From;
	b=LsJ9df+TBfsAUClTgMHph2pq42iciz9rax5XsiNkDukOsz8Tp/LcrScbyPRV6IsFe
	 ginpN1YXBs9Jws/vmgvZd9VVeoHk2aDwmZlzjlQBgeW42BMdN4NkPzqcPp+e3r6Xbu
	 TuChfVfV115j3BRA1kjVSuqutbsJJx3zyklyv5ls/83yLcbxgCj5oUfU+iG476LY7r
	 2GIA7HeyrxLms8gfqPyQJdgH/dI6VofeVu7oiV99hL7qLDIFvXlhEbT404LvsU6isK
	 taS14ND2BhOVdziRwKykD8waPqU2Gl03QvPBXiFIah2WLiUPi/XsGO8juhxFFnuS6p
	 XLdcJ1kz0PGMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4DA1EB64DD
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 03:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169077312871.14260.14681599103758759625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd0f927c1834fbe5a2fb064f644fbbf81963d8d6e3c05808c694b85996eb4e8c
Date: Mon, 31 Jul 2023 03:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690773128
