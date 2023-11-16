Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F326F8F56
	for <ddprobe@lists.linux.dev>; Thu, 16 Nov 2023 03:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qyBJLLaq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86743C433C8
	for <ddprobe@lists.linux.dev>; Thu, 16 Nov 2023 03:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700105896;
	bh=u9SbyQZO/+6wjly0Ll9o6R/Lvqo07iYhXQEUh8b9iFM=;
	h=To:Subject:From:Date:From;
	b=qyBJLLaqIiNxHmTe9ifbcytnALk36vB4nHXBkiNGhJNpk0ivxe466UkF24Gp+KW2Y
	 79pjgj7eekIakC+2+vgEjsD9korqtnGP1ErOJKJL/vx9zJ9Qavw0ebrptaP7v/5AUi
	 CPGTxuwL5LrUdndTAhIx6YOzJAQIlFVQDg3ytVyQfLbwzQ0WGc6WyS064XsN5PBb3X
	 u1HbFheJfC/sn+XKdWnHQ289Am+S3FLatkEuR6l7YD6wHpoQwMyeaDwbCkS3LWPgPD
	 kiVtUqPhcBrSSiO/Yg9R4AF5wdpypJozUtZey6kvEq899zkKkDQV5SAZawIw3hh/GB
	 AXDlt/RcPX0Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65445C2BB3F
	for <ddprobe@lists.linux.dev>; Thu, 16 Nov 2023 03:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170010589640.28387.7312470544482305927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e30cb2f7655dd41bf86a4e18dbf26fa3d4b573fa7d824b09946d68aa41a63bac
Date: Thu, 16 Nov 2023 03:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700105896
