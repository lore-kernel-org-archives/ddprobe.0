Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFD441370
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 09:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8050FC433D2
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 09:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671958887;
	bh=tIF1GR72kcW0lsEG3t5hKjI0NJITR2sDxpV/Dtocho8=;
	h=To:Subject:From:Date:From;
	b=lOLyMAcj0y9Ct0ric1m0/+GNWQ7s4aOJ1Cztkw8IY+1htvGnE0SAYs9FaujEQuUaT
	 cX/QldFMmSj1yS9XpORKGcOs7vixCQLQM61+qVdR7si1k9IpK1dRnQf3ALnIjnaFgq
	 2Rp4eYz4HicbmQ+BFhi8rAGkOpzwwnYmwtDhHrRDI294LQte3PwveUsrTopHp9fP22
	 kRUhWRBX599c/AAujQhA6W9HyvFe6N08wMdcQ+gT5WohUyw5diXzIFVNCmZDqCxPyQ
	 FgeQGino7PEOWvOt+Ujh0RvySxe/CPNtmaHGFs/aUq+YVuKPVluoPJYNiXZsT65ap5
	 KC0dtADtH/dfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65D8BC4332F
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 09:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167195888738.13205.9859221678772777653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4dfc2fa74b90d6ea3510e512ca35b0387059549931abbd42b2b349cba7c6972d
Date: Sun, 25 Dec 2022 09:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671958887
