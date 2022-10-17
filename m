Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9534C7F
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 12:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CB78C433C1
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 12:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666008053;
	bh=RVNUX8hAXeXkFktwM56u681jw6W2IzEXV4Gk4ws8cWs=;
	h=To:Subject:From:Date:From;
	b=Wm72hIbmgy9TMCTbpk2Kf82Vo/iwTStFMoXnS1ok/KZxMIJUY7YsEVQXbY/sV2oWy
	 7ObVv8dDmfEsx3gD2gAVQKG9HEvtkotsx2BmiXPShySZVCltumd6Rq/XuD6KrxporM
	 67MdXye0jdkhlzJXgDEYk3vlN94sgLGj716n8anZcPu//jYtwjiO+62TVqStF1Aqm5
	 JPeRARTnKqjD2LMe5549XOQXs9kTLfzf4MkrlnKUM78ut58XECC3bG+N+jUgg9MLdf
	 vCk6NFyztyIBjy7zBnnjHk3EuUge2I6j7l7buSraWyNhuUbh/EmfCtGvPwsSwB8ToP
	 OxTvDzFso6MuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53D06C4332F
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 12:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166600805333.10165.13832788123917741261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6437c470304c0f2ee2bea8f6f3bcb95fc40d7f812cc03b1d0b7eae11cf0543d5
Date: Mon, 17 Oct 2022 12:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666008053
