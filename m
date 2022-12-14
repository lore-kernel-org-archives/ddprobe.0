Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C52C28470
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 14:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D6B3C433EF
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 14:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671026487;
	bh=rY/sV75n5pthwUhEvKMjaqOwu2fMqOCgDaTFZK/HkRo=;
	h=To:Subject:From:Date:From;
	b=migAfdN5IwhZB8P62UHEQ3ASD55wRm81h/0/7TfycGnVou7G15UArC8RTTvRXBftp
	 /+35dq4VZTuDHEdRGcM9jlFreel6oGACaeOZHaLKkTG7y4+k3jQ5p7014Z3mAcCHA4
	 SXMkqvZiB2c4kWeqfCK21WWWOAQkk7kd7K3narG27ckNQdIGwfh5HItxTddPlQsYJZ
	 QTmW2utNenj0X572qFnPAhwtYx0W6+7zyaTmmlEDxnn2/2urbE1sGNXHff/j94hN8U
	 Bws1h26ZGYaDgy6AayzGx/ahF/HeEEppNDtlovVOmDEw4grLRHuPb6Oe6snbJ3/IR6
	 GUTw4SOFVtwfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 628DCC4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 14:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167102648739.26580.2810055467998562394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b39b82d51064f46406db9a68dd906f5bd4ff75cf59b78aeba90082a36923197f
Date: Wed, 14 Dec 2022 14:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671026487
