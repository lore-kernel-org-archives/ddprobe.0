Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA15B10F0
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 05:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BE3AC433D6
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 05:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662097253;
	bh=xg3ZQFOLmZe7JU9WRPojtYy9WXHgdGHeizu7s1uuEJ8=;
	h=To:Subject:From:Date:From;
	b=ng7UQZ6er6N61UUsKu195UQp9KsUd821j0NVk1+ocv13d/JbYBevgRHLVW/tKYVVo
	 h64chmcC6xKNfnKAJnuNCu+fKslhg5AciAEWRio9OxZ9TIfngWFRakkGUg+vidJiAe
	 s2dV0OFf/tAPH+BiQsOQNnPJFO94HuEKzznSeKa5oi2FAH3wk5XPjkP7pmVAPIc0B4
	 71a8dLbTpqG8aNnjimYjbjaNvqwtw/bDCikMPx5DUmBVQY9SAgBy3aPm65emqh5x8x
	 nrbjoqL9Mf3tyfEx9BpnGKcVPS8EZIsCDC+wsUF3NZdEgveWoYffGSVolvHRQtVIEn
	 ai8FrJLQ24fow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53748ECAAA1
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 05:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166209725333.8585.10248421994337457559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 666a2f9d6adeac05bb599a51b30d2a4d36a9b13fe85132422270889adb02c84b
Date: Fri, 02 Sep 2022 05:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662097253
