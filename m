Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DEA4EA9
	for <ddprobe@lists.linux.dev>; Thu,  7 Sep 2023 03:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C84AFC433C7
	for <ddprobe@lists.linux.dev>; Thu,  7 Sep 2023 03:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694057648;
	bh=jeZMFr5Nx1UXX2AZcBBTQLXilo3lne+wMgztwrN2O04=;
	h=To:Subject:From:Date:From;
	b=gdUWTjWiJ70aQTwub1BbVgkPBjV8WDfC4rpONImfARr1T7Ayvl2wl+Le26gP4KLLY
	 NwU03lNEC2mcARKg9oon1QznXo+r91rbGE39l6FJYMSjcsXnXZGHzGDtTJ6fJPYA6V
	 egwxLY7hbZWs8mGbVDC/L2FZVa2tVb/2Neu+VG5tZ/tD4Zds+sCB72OjNsQYRCO2r3
	 +Cb+claITdoZuiRly/1cWoweMdgf3HSik8ILjVn8jPm4F33y2dP1Gz+L9toisydxrx
	 iyV7axy7jlM/1MNUwR+OfIW+zSH9ptxSXFebH0Z5R09yuP0nPg6dyRQMSzyqWorUaB
	 VlpXVM3NFjHOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE4EEE14D4
	for <ddprobe@lists.linux.dev>; Thu,  7 Sep 2023 03:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169405764870.4010.10380794954054585590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06c665917ca02770591c10d7af92f6daa74525e421b9ec726357466a0a308b1f
Date: Thu, 07 Sep 2023 03:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694057648
