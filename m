Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8620A95D
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 20:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 95C7CC433EF
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 20:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673383887;
	bh=WQpr1Rvxy8xbWb6kt+Itbx6w07L+2NZcdbfn/K+6E+8=;
	h=To:Subject:From:Date:From;
	b=JMpn0e8eIPxTfTNao4Jk+62iyXH4p7/pYnUbxOqMp86fWzKQEwJJY6Yjp0eWbUyzB
	 tlIGeAvPD3ew1/EBxF4NT03ojCiTJhQaKjnnqKXIprERm9dI3Y2w7YG7rzE0N7leOC
	 LGaAp6HWqOyDDICJjIVgJWcPy+xSYQmYw/Mgx97Bq1JjAaDWnPnBZnEn7SUoogNblJ
	 c89TC0AiwxTR/swTDBLcS9PHeTAojNSIeZBcguutiKFVtPGGUjtqq4iaY3LdYp7enY
	 yM/tboXam6qyCbYSYfoZDZ0CNXW4BSiAyoZ2rZKwNPfEIYT7e+RECvc0IPbEW5wMsz
	 3PucZyZamu1Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7B929C46467
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 20:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167338388749.18644.17394082246937228627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eaf2669425667acff9f3c30d0ce5116a82a24826a0110f31aee1801b122961dd
Date: Tue, 10 Jan 2023 20:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673383887
