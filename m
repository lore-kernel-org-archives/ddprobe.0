Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD66A1C31
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 10:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E185C433C1
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 10:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669198854;
	bh=e8J6Zy108CsCmf1vV5cXPP6aFlo7OKcnoNgIGVbh/L0=;
	h=To:Subject:From:Date:From;
	b=Hrqg2brhw/e2jDratUWD4qORd0Ph+4cCWZbZvefiFADkdFDeefUn21KAmQdNbJTZi
	 IDT20XvEgelk/NSX2+dLwBggKKTZiGRsnuTsDNWFe0Aue5bkf8JlQJUVwmr0HTE7GZ
	 rzkCAkKSqC3VJva3E3tOT5WIGAutnroYfjXihtehPDRcRFgYT1A48hdyYF6tbWmWyI
	 IJeD85qb8vln96No4veYjEWzlr7IA5QB78iwDyeqrgeDhqCYRllsSqjDHVyIi4l6pT
	 LECGOBFPgokGPdtRdYxd4iXdRu0O84B1l4UdNiMPgtAGIU5cTrDHNoHmmnFgYETCGv
	 jlHHYL5NpQ41w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 529ACC433FE
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 10:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166919885433.5409.10373381255656571822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a03913f79d7f39709af99669c619b1c6f3c548c14c638f018e306750483f984
Date: Wed, 23 Nov 2022 10:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669198854
