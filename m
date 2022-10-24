Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B984F7ED
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 10:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74014C433C1
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 10:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666606253;
	bh=kZ6PhYlAcF+5QqV9C6DDsCxOdPJWJCVomkJfA7RNMIk=;
	h=To:Subject:From:Date:From;
	b=PMGy7Kpad1OAjvfW06B4196Yzcsjv70pIHRZR2aUI4HF6nhtnP1XCXKef3uHZyAbt
	 xWOejXV3h5Y7Z4F1taQtwxWSe4ayyDAQ2vITcVgr6lvXve8LXJqwzCzBEjTvhibdF4
	 NbVlrZ1pBFgo3DmfVFXuEqOVlrET0hSzvBq50xhBctXzfwPBJcOLQOuODAmegEa/+s
	 gMUVB/aS6G2gCNn9bz4dJ/TAX/3kYDtSOskWm5rCqKbxuCZ6GwCoDGbDA2RFLMPurw
	 Kzsp/pgyyJf/0MOIkOaGh20GN+XVFBBMjta+0aNgHplZwJSWRdR/OY/XhMMwc1coIz
	 HtoQ26Hv/QH2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E1CCC38A2D
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 10:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166660625337.30599.13827919971863302769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a15780302c6468347c6596af4df6e2222e263e81915aaecf6c83627e4c6b7a4e
Date: Mon, 24 Oct 2022 10:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666606253
