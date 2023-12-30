Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08B7FCA73
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 22:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gbac05ON"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84781C433C8
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 22:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703974096;
	bh=Y0PLTNxWVvR/3m1p9aYGpCpZGNdwZJeml9yTGq833VE=;
	h=To:Subject:From:Date:From;
	b=Gbac05ONPyUNIyOwiLaTsS83V0CIdHTsSUZSA3lTiaa0kzwzkF+PuovJnieMhpkom
	 5V7dTXOkpgRjO3EWxvUuSBhS2t3eEas5Uj9T1SMSo602XGs/dbqa63KtEkDW75Rxpj
	 aNfXCpURnx7T15wY0lCi4htnL1E7C75Wv4EnG7VSGlglYXxcNMjJXZWvQr9fc9YZtR
	 PTZB63c27A7Hbka8QRhVr0aVVYbWSBqgqS24Z6C0j/gJzBDYwDPDmdtAZxr9jHjeE7
	 S5YmHaTsvI/a/QbWnstL5g27NY9+QpWWC3uT78MzoOWsmng6NWNMbZW8v52bq+ZGUl
	 3E0b1/7t4Maxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 630ACC46CD2
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 22:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170397409637.18869.7019250908651470929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc57137945d604957c8bbb6ea732ed1c121780fc7d7260cef26705a0f5959218
Date: Sat, 30 Dec 2023 22:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703974096
