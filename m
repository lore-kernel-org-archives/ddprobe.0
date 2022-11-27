Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B98293D9D
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 18:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67EBBC433C1
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 18:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669572054;
	bh=QDJ6bSwc7thj4vUfG5GxpMjW2Ay3BCmmZr6bIDzhrH8=;
	h=To:Subject:From:Date:From;
	b=itiZOloM+566vaiadqWWNhVE8hfFh3G3RaESlD1ZiCYwAs057DdSGGETbFcSrBPOO
	 OZBLuOFqxz1KdWE4+TqyIe/cuVWpgCNj5sTTdGQYr6brzQpsZTX7r3LEUt53tIHwUH
	 4TGgfTQ7ClhL1tJ8JDPe5r3UZtH15rzG/hRgDc0d9KRwokdMW7E4Vhrf4QP/+rb0oq
	 NvS4aypDFxFXdWRlTu5YcqofJxy00pRDTV+Is4pAqO7SkGVY7qMK5u9O/fYBAZcKEy
	 I12FRXk6o+hWyV7CMIo1thm04xfzcsSCHlTum0Nd3jiVxr3ydVTJqqSXo7aytLH4oz
	 qFhRlTiiaeAZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50B1DC43217
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 18:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166957205432.24883.1378670257367904649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db6a26343ffc746cabf9fdfbd300b1c2531bcaf8976579eec9d9d2290a4dea66
Date: Sun, 27 Nov 2022 18:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669572054
