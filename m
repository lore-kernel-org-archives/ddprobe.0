Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F02E4EAD6
	for <ddprobe@lists.linux.dev>; Sun, 26 Nov 2023 18:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pxQc0+Gc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78052C433C7
	for <ddprobe@lists.linux.dev>; Sun, 26 Nov 2023 18:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701022096;
	bh=LYfsS5fW1aBzECBkjB7GkJayXGjLldcSdasKioA/T6M=;
	h=To:Subject:From:Date:From;
	b=pxQc0+GcJKmBYlgt6nlab17sKyxSQookzKbiJV86HxVHoCxcwwDm3JbCOrLum476R
	 jNmAP8G2uV8sEwLBQsrY1P4CAhpGQGNJV8wWt0eDTCqyz1SYfRWQQN2sRxpnuh1t5e
	 10mEQ9o5kN/FZDRrDW2eXpFa/h4bjwd/hho1S6XArrVCo9ZtCSiQqpk7+aLmFvSWIR
	 W8rgXUheW0hq3mEUcolDbtszNNejSBeWvg5gSEhszAXMYGgB8FRX5EcPWIUIVa8Z8Y
	 Sj5aFqPenVwmeR69HVsTI7zSDQVEU0498Pje11Sr+bEZdMjRWhwZe+wlffs1j7v4Eq
	 v95oWxYpQiZQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F257C4167B
	for <ddprobe@lists.linux.dev>; Sun, 26 Nov 2023 18:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170102209638.28548.11645272240072301972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da935c81469cbaf273cbcd45c70b6e3cbed83ea64923d9c7e3d562b971213d25
Date: Sun, 26 Nov 2023 18:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701022096
