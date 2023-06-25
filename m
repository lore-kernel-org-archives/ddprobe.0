Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 770DFEA4
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 17:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC3A3C433C8
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 17:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687715588;
	bh=rtxb+OUpNYIglciN6FYorwuBX1joUsY8hBOUqCgtDb4=;
	h=To:Subject:From:Date:From;
	b=M2neyK72tDDxt0MuEvneOq/IJeiAMc5zegVCBjSLVrmVvxG3rlkavglpF/4Wsbomo
	 comaGu3ILEQfFcS82uxvy/EYaJ/s6xguHLbXNyPYTgg/eyjglr7iva9eYYX9oCg0w4
	 7IZJ7otePmQN4k22jw74Yrk+aqU3OwFq+UdnQMCd/apYjL9DLNxeYfLqc7jZnF6L+J
	 QuySkyPYXpfe0H/UpLCfOJ9pP7ZAv7PyIhkQenCQqLDom9nynwR8X8+zvkH3XIe7Tr
	 90JgYMjRxog1aRB1tjoS5LLWdvtOjyRIESM2RtnTj2N/zAJL247XZRm0C+DaKY0fkK
	 KCPG/TBorkp/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0A7FEB64DC
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 17:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168771558877.27590.4504726039101444444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a810c6a3883659a48cd1da96fd4bac554027d9b96ad02ab155c7ab186710000f
Date: Sun, 25 Jun 2023 17:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687715588
