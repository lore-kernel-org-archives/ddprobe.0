Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6871442A
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 19:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CA8BC433D6
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 19:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661626852;
	bh=ltng07+GKa21oLRSOkdFq6J5OJyZAnyCNNbcqS4VKLw=;
	h=To:Subject:From:Date:From;
	b=WS8V5srjFvFdVFZjF3DtJu1g7VnMQy59Bivgnkt8H2OQ0kKJRQpO9LENl6k8L2dFK
	 kzh872rFE1wOBr6XtTsu9KmQoGBJpZlgcGNyDuK9D346mYqT36QIVDo5zoRiOaQETR
	 yKIwuaRhxSpSIiIt/vMmSX15T228gtTjmOUlibJhxWX4fdHhJ35paw+mQiImvCCE94
	 EErbOawvZpe7jQGND7HqcGA+crELv+T8dBu7I13M1sCBSIJZnmbzeLbM7RByhLczMe
	 KQ1IMdJqCsuGQtUdwdcFLuVclfgyab/UUsZuY/wRNewvpMgjQoSMFgtSpnp7S7TCrK
	 uQst7RSvfC+ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 533FDECAAD5
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 19:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166162685232.6466.4168166160641753229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09e75b13c3e25e68506fc28c5a4a0509256da2ae8f92a367f5d7949fed8c863c
Date: Sat, 27 Aug 2022 19:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661626852
