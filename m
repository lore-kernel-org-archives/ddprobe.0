Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B922F2CA2
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 20:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69076C433D6
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 20:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663015253;
	bh=GvXHodrG5IWZJJ6/o2uIVWIjmKNBbp8U+wiTGdP8o5s=;
	h=To:Subject:From:Date:From;
	b=mAwYq1vISQFwdFpeImZ7HFZreI3pStwwSVHnQXOD7dS+KT+9VzVCdGRAlhzMIsD6S
	 D2l6pOg2HZBOVee39zzA4IEoklkKj35jaTVc43SrbLlUOgEqBITfgy728oTzFzzCXQ
	 RGWp2x/0XUr1pcpXg8e0y3sBZKI34c8eKGH2NKd6SEBrInvaljYGD66t/2+SPJoh3o
	 3DeRbxRjF8JWVO1LMyq4tS40ZjxMHfDeT7HCtod4aqWGvr3LVTnrqsmGwaYU2+NeXw
	 tTSMlPac5RbFeEoP2FrJf8/nVUkZDS/2PhblZizQs56yX/xCLzn35C0ORnnlzwjNt6
	 GSPew5Deu3TCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F5BDC6FA83
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 20:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166301525331.9822.13929190338845805571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f0020a9b26c7c11b60f7d0322b00e802d7be492c6ab13e5d779d37481262ac5
Date: Mon, 12 Sep 2022 20:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663015253
