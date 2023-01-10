Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5DAFA94F
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 19:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85387C433D2
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 19:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673380287;
	bh=i1effS9OIOSbcPogVS1p3ENSO8I0i7d+V/uCqueTX0s=;
	h=To:Subject:From:Date:From;
	b=C5hZSrAxDRtyAocjGZYEV9tJEPcIavHBk8z68dSLIZjsiJdl0QFxwOPfRTXce60O+
	 UZqoIRt2EqcGEPtZQvBD/aPH9TMndIkdh6typoSimyyd+dyG8KfQ9RXy3WxRMrMdYg
	 Av4xhXt8U26XV+edMOpp/IdB6hbbMMsuRZ5+JkcfMUYN1Z/Vu1jZSWu4/GnR5VlXOF
	 BWZLvXUI45ly4EynjpZV0ITVOqjjUiZ7TcuXCZ0h1Pp9ADaQ/5XnqiIzrRj6yJ/WrT
	 /G9kib8nw2a1GRG/avGl5E/vw/fOKyxDDVs1Db4+YSlG3Ja4YJqryOQBMJwSCD/aHK
	 d7D48c8iY074w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6917DC54EBC
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 19:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167338028742.14728.7962514206314718464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a04952a48292d061bc834b4dffe09dc8cdc616e19688b7bccbaca302ba00964
Date: Tue, 10 Jan 2023 19:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673380287
