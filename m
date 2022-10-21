Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B938B2561
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 14:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D024C433C1
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 14:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666363853;
	bh=+BMZgEss9eRF0rhgOyj95UMVtwgCTnBAXIwsWOHyXFY=;
	h=To:Subject:From:Date:From;
	b=W0ZuaDGMguwU6hYrmGfgkJT2HSqx2wYp394yAGyogZeXHQylofY5SG4oBB1Sunc03
	 rkp/BfSaZftsyxvlpR0gOtWcSpTio5PQOUoNeqPPZTPzAY57/BrJiWWf+cb+C+UJJP
	 qlKhu19qTGYtmH7w4oh3hHVn3LReL09vOPyIee6+EJ5IN4FDAcc095aAiahRuaB8/i
	 6mBS2iK02dNRE9HmxYXwti3DlHgbqd+Or1JYwK2qLatEgxI5ntiTgpwCOF+n1qPMqL
	 nXe3q8agzmo5b4qJ2a+6+6qtAtrqttw0SctxAQdukJ4ge3KwAW+iedNFrb3xsvgOce
	 ylvhx1klOKExA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54560C433FE
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 14:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166636385333.9325.2446502935567404945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49ba4edf4b053e50ee477c81655aab45a72bbcd81d608ee637b14b503536a9a1
Date: Fri, 21 Oct 2022 14:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666363853
