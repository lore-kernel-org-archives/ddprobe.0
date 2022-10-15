Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBA342582
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 16:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F86BC433D6
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 16:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665852053;
	bh=AvjSO/tWoDkwoi8+Zl58ZRrZ/DMO1r+As/3OZzRTxzk=;
	h=To:Subject:From:Date:From;
	b=XgyUwPoUGOqIvQJ52YEf8dVvmMqopu+/B7hYKOgkewM1M3kxAKxg5Y9ACWySQumQm
	 4cw+MK7khMs3QGDgrzl/Rb3r4oC8mEin26+/y9HR1Jgwz5i3q5FnMryPc1ZhqvlM6g
	 n4yfuvQuxkdhIDPZPGu0P9/OGG8RAqbzvyMsBaXQWbYbqp/fkqEKZWpUntB1L5A2um
	 iSJqiGsf45yAtKcfAUb0zZKwLI9JdAvzG96yb0+yH1dlDP31CtzGbcP++nRifoBoKJ
	 2fVGFrcZ/bE84K5yOZCx6XrwwPGYjePjY68ho6AY0MaeyhlmDKHhz6YQ33C1zlB3xe
	 7QNzDayxRxXSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61BD5C433FE
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 16:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166585205336.944.11499386139449923337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81e6bc6952af7bb1526d11b5adc19da0c6a4b357b6d0dd269df5ece7df0b391c
Date: Sat, 15 Oct 2022 16:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665852053
