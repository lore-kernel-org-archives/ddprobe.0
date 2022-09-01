Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8FD8A3B
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 06:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C09BC433C1
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 06:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662015053;
	bh=v3Nt/Zp5yjObkznSc4lJR9uh7e7cK/vk5bQs/oJuQD0=;
	h=To:Subject:From:Date:From;
	b=Aeam7aFqd2eNT7J9LBUk0/E0JJls/Zh8hKqaF+I1GlmnZ32PkJSPOn9MP3gsfAL3u
	 SaPK9A99CcOZkkwuWZZFbyBdFT9GCiZwgWRtJfoGNut2X20QLqs+l9iCwZ0AE2exSM
	 NgH48eer+2D87oiNF6XOkZkpJuqPJKefEig47kaf4d78WXD7pD5P6pyqK9A/9ruVMK
	 04zJ0syxooUE+bUc3QodEUJ3fMjDepUodiXS41QCmEMjhPkwWMLhT0oCi9KiiqaPok
	 X4RpmjVvxO2hJtJDtFut1gJtgE3mao4BJSuhRdEa+F1oO4pyqlN3znmQtYgZ6v8bmx
	 9FBtC+/7ZGSeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55101ECAAD2
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 06:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166201505333.28217.16057403093012878831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42652e8ef19ebed87d33fc478c40883ba44033541d50d12ce28bd5b79f9c219d
Date: Thu, 01 Sep 2022 06:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662015053
