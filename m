Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 345C220F2
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 08:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D137BC433EF
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 08:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680511565;
	bh=KHTgu1U1IRkc7cEjFVtijDjHrFc/pZevaFa/G93pvSs=;
	h=To:Subject:From:Date:From;
	b=r/vPdFfb3UxG+lrpR/cvPuQYHq9CuQnefUg4mR4KQyLMLybnvdAQN0so2sgESH8p5
	 DBvfGICaTyy2JWCCNa4ziQi35IreVfeG7S+39yty7c2/3XF92ZH4Jyc4/IqpomR7Im
	 L+cCCulcrT37UH+xmWCocxn2WtAiXev3i7Jrx+9xdIX3qB9oZqOS5S1ztS52kjYtG1
	 MKkYMIMWH0vEuo7vi45X1XEC9+hY7T2qo+iom0V373DcmkTe5v9geyGfqQCdFL0suz
	 +hUMHIBP7mjqlXiO2+c/K9rdcxOIaUZq3M3KzhGfsxgkUOKA/Rc1PhbLyTYIfPqKrE
	 eDu3mibdUz6bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B93F5C76196
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 08:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168051156575.17969.16794437261850099755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5de51a34148527742417256e28a0e71d9fe3cfff46ab86c4d2486725c58079e0
Date: Mon, 03 Apr 2023 08:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680511565
