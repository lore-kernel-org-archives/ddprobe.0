Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54B3C107A7
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 11:55:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE4B0C433C8
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 11:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695642908;
	bh=QnDMT4WBOPYmq2TgnB4tz3lENpOb7EIq13En7SmswVI=;
	h=To:Subject:From:Date:From;
	b=kGNYlQ/JUeDmDT9Llhd9Zb9uB9BIyVHE+Xj2lIjec+4v5Sp/hzdO1t5SAZxgyemM/
	 vBbFUs/Zbonu0p7LkGwQdbm4n/Z2p2XKTieOTxpizIHzl7INf6Fw0RP3bcrMwqehWM
	 Gi1zDkzitx+KcGUTmldR9yWMrLtfA5JUBz0kunWS2FwHz1Z5Yk+YBBHNaVp8L9ZKW8
	 Yf2VSg88xTJrO2ho2MK1woacOgasNCGpSOH41EQPHTTuekZFWhH7J2Vskm0o+lejaF
	 69kdSl94RR3+Rw5e779odZWeueM9mMeeCIsrGCuO7LP9quiYkwoZSiEbYNTVA4BhbA
	 d3cRhBxFKksrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABDA6CE7A81
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 11:55:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169564290869.16735.12355513433686168912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75a1b3ff1df05c847046e731de70faef357612a1d77e33853f577f88037b8cae
Date: Mon, 25 Sep 2023 11:55:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695642908
