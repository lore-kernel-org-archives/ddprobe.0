Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBC29A40
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 04:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71183C433D6
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 04:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667536254;
	bh=ra3aFOf6kRRzA1OdIvV4VWaNEzRrslZ4kvrVCAtT3Yk=;
	h=To:Subject:From:Date:From;
	b=swaxISqti2ofiLD63MLIA0Yd1XGdu+UPgNQbnWeGKLwNSLcPy1oWq0toC0tOErf9m
	 hH0E/lQWTxXotP8amSCQYJqfGPHOzTVzD9g2l1Z5oCUWN8UZg5ioDf4bRy1t12Lq8k
	 bKuHC3tU3aMp2n5T/3jES/quyb0cEjyrW2+d4zhLArqEn4TJQvnrBxxgCSjVovz1eH
	 uwdErfdK/oB4h/ARrR2vBjpbN988UA7iffi8bd6lKdpmyLlN2358boGAE67+hw8dB2
	 pEfuX77nVZaeda+23IX+CC0rvdIGaOZvsCd+VNg7zCNPsv3SNzb3PhObSWNys3yj2P
	 Gh5EYuystEYZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 537E8C433FE
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 04:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166753625433.735.17093724387132645097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74aa348e4ba23bdc71a39aa6d5abc86340eb2af71050723ac2ea8de2c80581bd
Date: Fri, 04 Nov 2022 04:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667536254
