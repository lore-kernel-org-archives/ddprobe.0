Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D63AF1C02
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 13:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A0ADC433F0
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 13:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671456687;
	bh=xTmMSayjNLkBeHIENgRrJ1VdkeHRtBz17vjvp/rY+BI=;
	h=To:Subject:From:Date:From;
	b=LZt2IMl2o9tim/k5VV2cPYlT5Nim2Z8hSqUz/f2aKJm0ZSL1DK9kuNqpvCnApNtVb
	 iPLUEr18cFqpLkH5tbcimU5QrW769h7gpzry2wqf3fbGnYmHdfJkQheZDN2HpKbTZ2
	 QTnqqyB1HTlAM25zh1jrjbvZEdb/1fsChr2/MSE/gl+pJwxUuYn9MCCZWLQ5hcuTxV
	 WU7+7Of/SIeD11N8j+MQxJSerVmXLGhHUej31aSz6o6EoCVjZPo1J4xkBn6Dc/4pK5
	 4I1ZXwZISqXpKOXMZrckztG5Q55Buq1cc3GcZX3LZKXGlJ5+Cm/jk2+RMgi3R921y5
	 GAP23hYP9fr/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A246C4332F
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 13:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167145668742.29103.4221260245806934873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2565e2b5634f39cd87ae608fbf1185601f199a4cef9029fb9c2cbe95e418092e
Date: Mon, 19 Dec 2022 13:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671456687
